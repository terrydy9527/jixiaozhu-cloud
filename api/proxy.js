// Vercel Edge Function - 代理服务器
// 处理 CORS 问题并转发请求到 Coze

const COZE_API_URL = 'https://2v5478d2bg.coze.site/stream_run';
const COZE_API_KEY = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjRhODQyODA2LWQwZGYtNDlmYS05ZDAxLWNhM2MyNDJkMWUyNiJ9.eyJpc3MiOiJodHRwczovL2FwaS5jb3plLmNuIiwiYXVkIjpbImp6am1WNFNYUUNpWDdsU1B6cnFraktVVWhxU1J5eGg1Il0sImV4cCI6ODIxMDI2Njg3Njc5OSwiaWF0IjoxNzc2OTMxODMwLCJzdWIiOiJzcGlmZmU6Ly9hcGkuY296ZS5jbi93b3JrbG9hZF9pZGVudGl0eS9pZDo3NjMxNDgwNzIwMzU0OTY3NjA0Iiwic3JjIjoiaW5ib3VuZF9hdXRoX2FjY2Vzc190b2tlbl9pZDo3NjMxODY0MTAwMDExNjM4ODExIn0.DIkpUyxZ2NwU03k_avoK4vlbXoCVHd8BcToROg_XRYVmq_5Mu8VZzyqnDYs4qUz-XMe1GOcu1uTSc987XdwpGpGhC1F2QYJEEQ2smB_WmceF_zEBW7WE0ZqRkkVpnV_B2HYHtFSKD2dQf95S7B4yWJYn8YQRG20nKFOoPPfdHx0gHOXRz3Wft97c20JLD8x-XLrEqSX2S3fLUOP_4iSxve0DEyUkzimltsHwe6tEAZJZ2j4eX1JsUfAtmRi8enK5ZOVPLsO7xvxI_GTAPBwyGqiZrypBB3FOdPB5mkTPTjml1LAP_xFVAUw-lXfBufUtQ_iusjaWyp4L8KyU1a17FQ';

export default async function handler(request, response) {
  // 处理 CORS 预检请求
  if (request.method === 'OPTIONS') {
    response.setHeader('Access-Control-Allow-Origin', '*');
    response.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    response.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    response.status(200).end();
    return;
  }

  // 处理健康检查
  if (request.method === 'GET' && request.url.includes('/health')) {
    response.setHeader('Access-Control-Allow-Origin', '*');
    response.status(200).json({ status: 'ok', message: '代理服务器运行正常' });
    return;
  }

  // 处理 POST 请求（聊天对话）
  if (request.method === 'POST') {
    try {
      const body = await request.json();

      // 转发请求到 Coze
      const cozeResponse = await fetch(COZE_API_URL, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${COZE_API_KEY}`
        },
        body: JSON.stringify(body)
      });

      if (!cozeResponse.ok) {
        throw new Error(`Coze API error: ${cozeResponse.status}`);
      }

      // 设置 SSE 响应头
      response.setHeader('Content-Type', 'text/event-stream');
      response.setHeader('Cache-Control', 'no-cache');
      response.setHeader('Connection', 'keep-alive');
      response.setHeader('Access-Control-Allow-Origin', '*');
      response.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
      response.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');

      // 流式转发 Coze 的响应
      const reader = cozeResponse.body.getReader();
      const decoder = new TextDecoder();

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;

        const chunk = decoder.decode(value);
        response.write(chunk);
      }

      response.end();
    } catch (error) {
      console.error('代理服务器错误:', error);
      response.setHeader('Content-Type', 'application/json');
      response.setHeader('Access-Control-Allow-Origin', '*');
      response.status(500).json({
        error: '代理服务器错误',
        message: error.message
      });
    }
    return;
  }

  // 不支持的请求方法
  response.setHeader('Access-Control-Allow-Origin', '*');
  response.status(405).json({ error: 'Method not allowed' });
}

// 配置 Edge Runtime
export const config = {
  runtime: 'edge',
};
