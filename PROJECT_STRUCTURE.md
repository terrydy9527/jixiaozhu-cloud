# 技小助云端版 - 项目结构

## 📁 完整目录结构

```
jixiaozhu-cloud/
│
├── public/                          # 前端静态文件
│   └── index.html                   # 主界面（单页应用）
│
├── api/                             # Vercel Edge Functions
│   └── proxy.js                     # 代理服务器（解决 CORS）
│
├── vercel.json                      # Vercel 配置文件
├── package.json                     # 项目依赖配置
├── .gitignore                       # Git 忽略文件
│
├── deploy.bat                       # Windows 一键部署脚本
├── deploy.sh                        # Linux/macOS 一键部署脚本
│
├── README.md                        # 完整部署文档
├── QUICK_START.md                   # 快速开始指南
├── PROJECT_STRUCTURE.md             # 本文件（项目结构说明）
└── DEPLOYMENT_PLAN.md               # 部署方案对比
```

---

## 📄 文件说明

### 🎨 前端文件 (`public/`)

#### `public/index.html`
- **类型**：单页 HTML 应用
- **作用**：用户界面
- **包含**：
  - HTML 结构
  - CSS 样式（内联）
  - JavaScript 逻辑（内联）
  - Vue 3（通过 CDN）
  - 通信逻辑

**关键代码：**
```javascript
const CONFIG = {
    API_URL: '/api/proxy',  // 使用本地代理
};
```

---

### ⚙️ 后端文件 (`api/`)

#### `api/proxy.js`
- **类型**：Vercel Edge Function
- **作用**：代理服务器，解决 CORS 问题
- **功能**：
  - 处理 CORS 预检请求
  - 转发请求到 Coze API
  - 添加 API Key 认证
  - 流式传输响应
  - 健康检查

**关键代码：**
```javascript
const COZE_API_URL = 'https://2v5478d2bg.coze.site/stream_run';
const COZE_API_KEY = '你的API Key';
```

---

### 📋 配置文件

#### `vercel.json`
- **作用**：Vercel 平台配置
- **内容**：
  - 路由规则
  - 函数配置
  - 重写规则

**关键字段：**
```json
{
  "functions": {
    "api/proxy.js": {
      "maxDuration": 60  // 最大执行时间 60 秒
    }
  }
}
```

#### `package.json`
- **作用**：项目元数据和依赖
- **内容**：
  - 项目名称
  - 版本号
  - 脚本命令
  - 依赖项

**关键字段：**
```json
{
  "name": "jixiaozhu-cloud",
  "version": "2.0.0",
  "scripts": {
    "deploy": "vercel --prod"
  }
}
```

#### `.gitignore`
- **作用**：指定不需要提交到 Git 的文件
- **忽略**：
  - `node_modules/`
  - `.vercel/`
  - IDE 配置
  - 日志文件

---

### 🚀 部署脚本

#### `deploy.bat` (Windows)
- **作用**：Windows 一键部署脚本
- **步骤**：
  1. 检查 Node.js
  2. 检查 npm
  3. 安装 Vercel CLI（如果需要）
  4. 检查登录状态
  5. 执行部署

#### `deploy.sh` (Linux/macOS)
- **作用**：Linux/macOS 一键部署脚本
- **功能**：同 `deploy.bat`

---

### 📖 文档文件

#### `README.md`
- **作用**：完整部署文档
- **内容**：
  - 详细部署步骤
  - 配置说明
  - 常见问题
  - 高级配置

#### `QUICK_START.md`
- **作用**：快速开始指南
- **内容**：
  - 3 分钟快速部署
  - 使用方法
  - 小技巧
  - 常见问题

#### `PROJECT_STRUCTURE.md` (本文件)
- **作用**：项目结构说明
- **内容**：
  - 目录树
  - 文件说明
  - 代码结构

#### `DEPLOYMENT_PLAN.md`
- **作用**：部署方案对比
- **内容**：
  - 多种部署方案
  - 优缺点分析
  - 选择建议

---

## 🔍 代码结构

### 前端架构

```
index.html
├── HTML 结构
│   ├── header (标题栏)
│   ├── main-content (主体)
│   │   ├── sidebar (侧边栏)
│   │   │   └── quick-actions (快捷功能)
│   │   └── chat-area (聊天区域)
│   │       ├── messages (消息列表)
│   │       └── input-area (输入区)
│   └── JavaScript
│       ├── CONFIG (配置)
│       ├── sendMessage (发送消息)
│       ├── addMessage (添加消息)
│       ├── showTypingIndicator (打字动画)
│       └── 其他工具函数
└── CSS 样式
    ├── 全局样式
    ├── 组件样式
    └── 响应式布局
```

### 后端架构

```
proxy.js (Edge Function)
├── 导出
│   └── handler (主处理函数)
│       ├── CORS 处理
│       ├── 健康检查
│       ├── POST 请求处理
│       └── 错误处理
└── 配置
    └── config (Edge Runtime 配置)
```

---

## 🔄 数据流

### 用户发送消息流程

```
用户输入
    ↓
前端 (index.html)
    ↓
调用 /api/proxy
    ↓
代理服务器 (proxy.js)
    ↓
转发到 Coze API
    ↓
Coze 返回响应
    ↓
代理转发（流式）
    ↓
前端显示
```

### SSE 流式传输

```
Coze 返回数据
    ↓
proxy.js 读取流
    ↓
逐块转发
    ↓
前端实时显示
```

---

## 🛠️ 技术栈

### 前端
- **框架**：Vue 3 (CDN)
- **样式**：CSS3 (内联)
- **通信**：Fetch API + SSE

### 后端
- **平台**：Vercel
- **Runtime**：Edge Function
- **语言**：JavaScript

### 部署
- **平台**：Vercel
- **CDN**：全球加速
- **SSL**：自动 HTTPS

---

## 📊 部署后的文件结构

部署到 Vercel 后，实际结构：

```
.vercel/
├── .vercelignore
├── vercel.json
├── public/
│   └── index.html
├── api/
│   └── proxy.js
└── .vc-config.json
```

**注意**：`.vercel/` 文件夹是 Vercel 自动生成的，包含构建缓存和配置。

---

## 🔧 配置修改指南

### 修改 Coze API 配置

编辑 `api/proxy.js`：
```javascript
const COZE_API_URL = '你的新API地址';
const COZE_API_KEY = '你的新API Key';
```

### 修改前端样式

编辑 `public/index.html` 中的 CSS 部分：
```css
body {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    /* 修改这里的颜色 */
}
```

### 修改快捷功能

编辑 `public/index.html` 中的按钮：
```html
<button class="action-btn" onclick="quickAction('你的自定义问题')">
    <span class="action-icon">🎯</span>
    自定义功能
</button>
```

### 修改欢迎语

编辑 `public/index.html`：
```html
<div class="welcome-message">
    <h2>👋 你好！我是技小助</h2>
    <p>修改这里的欢迎语...</p>
</div>
```

---

## 📝 开发建议

### 添加新功能

1. **前端**：在 `index.html` 中添加 HTML 和 JavaScript
2. **后端**：在 `api/` 目录创建新的 Edge Function

### 测试修改

1. 本地测试：使用 `vercel dev` 启动本地开发服务器
2. 预览部署：使用 `vercel` 创建预览链接
3. 生产部署：使用 `vercel --prod` 部署到生产环境

### 版本管理

建议使用 Git 管理版本：
```bash
git add .
git commit -m "添加新功能"
git push
```

---

## 🎯 总结

这是一个极简的云端部署方案，核心思想：
- ✅ 单文件前端（无需构建）
- ✅ Edge Function 代理（解决 CORS）
- ✅ 一键部署脚本（简化流程）
- ✅ Vercel 平台（免费托管）

**适合场景：**
- 教学一体机部署
- 快速原型验证
- 低流量应用
- 教育项目

---

## 🚀 下一步

1. 阅读 [QUICK_START.md](QUICK_START.md) 快速开始
2. 阅读 [README.md](README.md) 了解详细配置
3. 开始部署！
