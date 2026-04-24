# 技小助 - 云端部署版

## 🌐 在线访问方案

将前端部署到免费云平台，提供永久访问链接。

## 🚀 三种部署方案

### 方案 A：Vercel（推荐）

#### 优点
- ✅ 全球 CDN 加速
- ✅ 自动 HTTPS
- ✅ 免费无限流量
- ✅ 部署速度快

#### 部署步骤

**步骤 1：准备部署文件**
1. 创建 `vercel.json` 配置文件
2. 创建 `public/index.html`
3. 推送到 GitHub（可选）

**步骤 2：部署到 Vercel**

**方法 1：通过网站部署**
1. 访问 https://vercel.com
2. 注册/登录账号（推荐使用 GitHub）
3. 点击 "New Project"
4. 上传或导入项目
5. 等待部署完成（约 2 分钟）
6. 获得访问链接

**方法 2：通过 Vercel CLI**
```bash
# 安装 Vercel CLI
npm install -g vercel

# 部署
vercel
```

**步骤 3：配置代理**
由于 CORS 问题，需要配置代理：
1. 在 Vercel 中创建 serverless function
2. 添加 `api/proxy.js` 处理代理请求

---

### 方案 B：Netlify

#### 优点
- ✅ 全球 CDN
- ✅ 自动 HTTPS
- ✅ 免费额度充足
- ✅ 支持 Forms/Functions

#### 部署步骤

**方法 1：拖拽部署**
1. 准备 `index.html`
2. 访问 https://app.netlify.com/drop
3. 拖拽文件夹到上传区域
4. 等待部署完成
5. 获得访问链接

**方法 2：Git 集成**
1. 推送代码到 GitHub
2. 在 Netlify 中导入项目
3. 配置构建设置
4. 自动部署

**步骤 3：配置代理**
添加 `netlify/functions/proxy.js` 处理代理

---

### 方案 C：Cloudflare Pages

#### 优点
- ✅ 全球 CDN
- ✅ 无限流量
- ✅ 快速部署
- ✅ Workers 支持

#### 部署步骤

**方法 1：直接上传**
1. 访问 https://dash.cloudflare.com/
2. 选择 "Workers & Pages"
3. 点击 "Create application"
4. 上传文件
5. 部署完成

**方法 2：Git 集成**
1. 推送代码到 GitHub
2. 在 Cloudflare 中导入项目
3. 自动部署

**步骤 3：配置代理**
使用 Cloudflare Workers 处理代理

---

## 🎯 推荐方案：Vercel + Edge Function

让我为你创建一个完整的 Vercel 部署包。

## 📦 部署包结构

```
jixiaozhu-cloud/
├── public/
│   └── index.html          # 前端界面
├── api/
│   └── proxy.js            # Edge Function 代理
├── vercel.json             # Vercel 配置
└── README.md               # 部署说明
```

## 🔧 配置说明

### `vercel.json`
```json
{
  "functions": {
    "api/proxy.js": {
      "maxDuration": 60
    }
  },
  "rewrites": [
    {
      "source": "/api/:path*",
      "destination": "/api/proxy.js"
    }
  ]
}
```

### `api/proxy.js`
处理所有 API 请求，添加认证并转发到 Coze。

---

## 🚀 快速部署（5分钟）

### 步骤 1：创建项目文件夹
```bash
mkdir jixiaozhu-cloud
cd jixiaozhu-cloud
```

### 步骤 2：创建配置文件
（我会提供完整文件）

### 步骤 3：部署到 Vercel
```bash
vercel
```

### 步骤 4：获得访问链接
类似：`https://jixiaozhu.vercel.app`

---

## 🌐 访问方式

部署完成后，提供链接：
```
https://your-app-name.vercel.app
```

任何有网络的地方都可以直接访问！

---

## 💡 备选方案

如果云端部署有 CORS 问题，可以使用：

### 方案 D：本地服务器 + 内网穿透

使用 ngrok 或 frp 将本地服务器暴露到公网。

**优点**：
- ✅ 完全控制
- ✅ 无 CORS 问题

**缺点**：
- ⚠️ 需要保持本地服务器运行
- ⚠️ 需要公网 IP

---

## 📋 选择建议

| 场景 | 推荐方案 |
|------|----------|
| 学校有服务器 | Vercel/Netlify |
| 需要长期稳定 | 自建服务器 |
| 快速测试 | Netlify Drop |
| 跨域问题严重 | 本地 + ngrok |

---

## ❓ 下一步

我立即为你创建：
1. ✅ 完整的 Vercel 部署包
2. ✅ Edge Function 代理代码
3. ✅ 一键部署脚本
4. ✅ 详细的部署说明

准备好后，你只需要：
1. 注册 Vercel 账号
2. 运行部署命令
3. 获得访问链接
4. 在任何地方使用！

需要我立即开始创建部署包吗？ 🚀
