# 手动部署指南 - 解决脚本报错

如果你运行 `deploy.bat` 遇到报错，可以按照这个步骤手动部署。

---

## 方法 1：使用最简单的脚本（推荐）

**步骤：**

1. 双击 `deploy-simple.bat`（而不是 `deploy.bat`）
2. 等待安装完成
3. 按照提示操作

这个脚本更简单，不会有编码问题。

---

## 方法 2：手动命令行部署

### 第 1 步：打开命令提示符（CMD）

- 按 `Win + R`
- 输入 `cmd`
- 按回车

### 第 2 步：进入项目目录

```cmd
cd /d "你的完整路径\web-client\cloud-deployment"
```

例如：
```cmd
cd /d "C:\Users\YourName\Desktop\web-client\cloud-deployment"
```

### 第 3 步：检查 Node.js

```cmd
node --version
```

如果提示 `'node' 不是内部或外部命令`，说明需要安装 Node.js：
1. 访问 https://nodejs.org/
2. 下载 LTS 版本（推荐 18.x 或 20.x）
3. 安装（一路点击"下一步"）
4. 安装完成后，重新打开 CMD

### 第 4 步：安装 Vercel CLI

```cmd
npm install -g vercel
```

等待安装完成（可能需要几分钟）

### 第 5 步：登录 Vercel

```cmd
vercel login
```

按提示操作：
1. 输入邮箱或使用 GitHub 登录
2. 打开邮箱点击验证链接
3. 在命令行按回车确认

### 第 6 步：部署

```cmd
vercel --prod
```

按提示操作：
1. 问 "Set up and deploy?" 输入 `Y` 或直接回车
2. 问 "Link to existing project?" 输入 `N` 或直接回车
3. 问 "What's your project's name?" 输入 `jixiaozhu-cloud` 或直接回车
4. 问 "In which directory is your code located?" 直接回车
5. 问 "Want to override the settings?" 输入 `N` 或直接回车

等待 1-2 分钟，部署完成！

### 第 7 步：获取访问链接

部署成功后，会显示类似：
```
✨ Production: https://jixiaozhu-cloud-xxx.vercel.app
```

**复制这个链接，就可以使用了！**

---

## 方法 3：通过 Vercel 网站部署（无需命令行）

### 第 1 步：准备文件

确保你的 `cloud-deployment` 文件夹包含：
- `public/index.html`
- `api/proxy.js`
- `vercel.json`
- `package.json`

### 第 2 步：注册 Vercel 账号

1. 访问 https://vercel.com
2. 点击 "Sign Up" 注册
3. 推荐使用 GitHub 账号登录

### 第 3 步：创建项目

1. 登录后，点击 "New Project"
2. 点击 "Upload"（上传）
3. 将整个 `cloud-deployment` 文件夹拖进去
4. 等待上传完成

### 第 4 步：配置项目

1. 项目名称：`jixiaozhu-cloud`
2. 框架预设：选择 "Other"
3. 其他设置保持默认
4. 点击 "Deploy"

### 第 5 步：等待部署

等待 1-2 分钟，部署完成！

### 第 6 步：获取链接

部署完成后，会显示访问链接，复制即可！

---

## 常见问题

### Q1: 提示 "node 不是内部或外部命令"

**A:** 需要安装 Node.js
1. 访问 https://nodejs.org/
2. 下载并安装
3. 安装后重新打开 CMD

### Q2: 提示 "npm 不是内部或外部命令"

**A:** 同样需要安装 Node.js，npm 会随 Node.js 一起安装

### Q3: 提示 "vercel 不是内部或外部命令"

**A:** 需要安装 Vercel CLI
```cmd
npm install -g vercel
```

### Q4: 脚本显示乱码

**A:** 使用 `deploy-simple.bat` 或手动部署

### Q5: 登录 Vercel 失败

**A:**
1. 检查网络连接
2. 使用 GitHub 账号登录（最稳定）
3. 检查邮箱是否收到验证邮件

### Q6: 部署失败

**A:**
1. 检查文件是否完整
2. 查看 Vercel 构建日志
3. 确保有网络连接

---

## 推荐方式

如果你不熟悉命令行，推荐使用 **方法 3**（通过 Vercel 网站），完全不需要命令！

---

## 需要帮助？

如果以上方法都不行，请提供：
1. 具体的错误信息
2. 你执行到哪一步
3. 你的操作系统版本

我会帮你解决！
