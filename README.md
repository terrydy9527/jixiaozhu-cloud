# 技小助 v2.0 - 云端部署版

## 🌟 项目简介

技小助是一款通用技术学科智能助手，提供：
- 📚 知识问答
- 💡 设计指导
- 🔬 实验辅助
- 📷 图片识别
- 💻 代码解释
- 🌐 联网搜索

**云端部署版**让你可以在任何有网络的地方直接访问，无需本地配置！

---

## 🚀 快速部署（5分钟）

### 方法 1：通过 Vercel 网站部署（最简单）

#### 步骤 1：准备文件
确保你有以下文件结构：
```
jixiaozhu-cloud/
├── public/
│   └── index.html          # 前端界面
├── api/
│   └── proxy.js            # 代理服务
├── vercel.json             # Vercel 配置
└── package.json            # 项目配置
```

#### 步骤 2：注册 Vercel 账号
1. 访问 [Vercel官网](https://vercel.com)
2. 点击 "Sign Up" 注册
3. 推荐使用 GitHub 账号登录（最方便）

#### 步骤 3：创建新项目
1. 登录后，点击 "New Project"
2. 点击 "Upload" 或 "Continue with GitHub"

**如果使用 GitHub：**
1. 先将代码推送到 GitHub 仓库
2. 在 Vercel 中导入该仓库
3. 点击 "Deploy"

**如果直接上传：**
1. 点击 "Upload"
2. 将整个 `jixiaozhu-cloud` 文件夹拖进去
3. 等待上传完成
4. 点击 "Deploy"

#### 步骤 4：等待部署
- 部署过程大约需要 1-2 分钟
- 可以看到实时构建日志

#### 步骤 5：获取访问链接
部署完成后，你会得到一个链接，类似：
```
https://jixiaozhu-cloud.vercel.app
```

**恭喜！现在你可以通过这个链接在任何地方访问技小助了！** 🎉

---

### 方法 2：使用 Vercel CLI

#### 步骤 1：安装 Node.js
确保你的电脑已安装 Node.js（建议 16+ 版本）

#### 步骤 2：安装 Vercel CLI
```bash
npm install -g vercel
```

#### 步骤 3：登录
```bash
vercel login
```
按提示完成登录（推荐使用 GitHub）

#### 步骤 4：部署
```bash
cd jixiaozhu-cloud
vercel
```

#### 步骤 5：选择配置
按提示选择：
```
? Set up and deploy "~/jixiaozhu-cloud"? [Y/n] Y
? Which scope do you want to deploy to? (选择你的账号)
? Link to existing project? [y/N] N
? What's your project's name? jixiaozhu-cloud
? In which directory is your code located? ./
? Want to override the settings? [y/N] N
```

#### 步骤 6：获取链接
部署完成后，你会看到：
```
✨ Production: https://jixiaozhu-cloud.vercel.app
```

---

## 🔧 配置说明

### 代理服务器 (api/proxy.js)

这个 Edge Function 解决了 CORS 跨域问题，并自动添加 Coze 的 API Key。

**功能：**
- ✅ 处理 CORS 预检请求
- ✅ 转发所有聊天请求到 Coze
- ✅ 流式传输响应
- ✅ 健康检查接口

### 前端配置 (public/index.html)

**关键配置：**
```javascript
const CONFIG = {
    API_URL: '/api/proxy',  // 使用本地代理，避免 CORS 问题
};
```

---

## 🌐 使用方法

### 在电脑浏览器访问
直接打开部署链接即可

### 在教学一体机访问
1. 打开一体机的浏览器
2. 输入部署链接
3. 添加到书签（推荐）
4. 开始使用

### 在手机/平板访问
同样直接打开链接即可

---

## 💡 高级配置

### 自定义域名

如果你有自己的域名，可以绑定到 Vercel：

1. 在 Vercel 项目中，进入 "Settings" → "Domains"
2. 添加你的域名
3. 配置 DNS 记录
4. 等待 SSL 证书生成

完成后，你就可以使用类似 `jixiaozhu.yourschool.com` 的地址访问

### 修改 API 配置

如果需要修改 Coze API 配置，编辑 `api/proxy.js`：

```javascript
const COZE_API_URL = '你的Coze API地址';
const COZE_API_KEY = '你的Coze API Key';
```

### 自定义界面

编辑 `public/index.html`，可以修改：
- 颜色主题
- 布局
- 快捷功能
- 欢迎语

---

## 📊 监控和日志

### 查看访问日志
1. 进入 Vercel 项目
2. 点击 "Logs" 标签
3. 查看实时请求日志

### 查看性能指标
1. 进入 Vercel 项目
2. 点击 "Analytics" 标签
3. 查看访问量、响应时间等

---

## 🔄 更新部署

当需要更新应用时：

### 方法 1：Git 自动部署
```bash
git add .
git commit -m "更新功能"
git push
```
Vercel 会自动检测到更新并重新部署

### 方法 2：手动部署
```bash
vercel --prod
```

---

## 💰 费用说明

### Vercel 免费额度
- ✅ 100GB 带宽/月
- ✅ 无限请求
- ✅ 自定义域名支持
- ✅ 自动 HTTPS
- ✅ 全球 CDN

**完全满足教学使用需求！**

### 如果超出免费额度
- Hobby 计划：$20/月（更高级功能）
- 学校账号可能有特殊优惠

---

## ❓ 常见问题

### Q1: 部署失败怎么办？
**A:** 检查以下几点：
1. 文件结构是否正确
2. `vercel.json` 是否存在
3. 查看 Vercel 构建日志，找到具体错误

### Q2: 提示 CORS 错误？
**A:** 确保配置了 `/api/proxy` 代理，前端使用 `/api/proxy` 而不是直接访问 Coze

### Q3: 响应速度慢？
**A:** Vercel 会自动选择最近的 CDN 节点，通常很快。如果慢，可能是 Coze 服务端问题

### Q4: 如何查看实时访问量？
**A:** Vercel 提供详细的访问统计，在项目 Dashboard 查看

### Q5: 可以同时部署多个版本吗？
**A:** 可以！每次部署都会生成一个预览链接，确认无误后再部署到生产环境

---

## 🎯 下一步

部署完成后，你可以：
1. ✅ 在任何有网络的地方访问
2. ✅ 分享链接给其他教师
3. ✅ 配置自定义域名
4. ✅ 监控使用情况
5. ✅ 根据反馈优化功能

---

## 📞 技术支持

遇到问题？
- 查看 Vercel 文档：https://vercel.com/docs
- 查看项目 Issues
- 联系开发团队

---

## 🎓 使用建议

### 在课堂使用
1. 提前部署好链接
2. 将链接保存到浏览器书签
3. 课前测试连接
4. 准备备用方案（如果网络故障）

### 学生课后使用
1. 分享链接给学生
2. 建议学生添加到手机书签
3. 鼓励学生在课外使用

### 网络要求
- 稳定的网络连接
- 建议使用 Chrome/Edge 浏览器
- 支持移动端访问

---

## 🚀 开始部署吧！

准备好后，按照上面的步骤，5 分钟内你就可以拥有一个全球可访问的技小助！

**有任何问题，随时反馈！** 🎉
