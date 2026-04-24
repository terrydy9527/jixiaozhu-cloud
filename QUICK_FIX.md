# ⚡ 快速修复指南

## 问题：运行 deploy.bat 显示乱码和报错

**原因：** 脚本文件的编码问题

**解决方案（3选1）：**

---

## ✅ 方案 1：使用简化脚本（最简单）

**操作：**

1. 打开 `cloud-deployment` 文件夹
2. 双击 `deploy-simple.bat`（注意是 **simple**）
3. 等待完成

这个脚本只使用英文，不会有编码问题。

---

## ✅ 方案 2：通过 Vercel 网站部署（推荐新手）

**操作：**

1. 访问 https://vercel.com
2. 注册/登录账号（推荐使用 GitHub）
3. 点击 "New Project"
4. 点击 "Upload"
5. 将整个 `cloud-deployment` 文件夹拖进去
6. 点击 "Deploy"
7. 等待 1-2 分钟
8. 获得访问链接！

**全程不需要命令行！**

---

## ✅ 方案 3：手动命令行部署

**操作：**

1. 按 `Win + R`，输入 `cmd`，回车
2. 输入：
   ```cmd
   cd /d "你的路径\web-client\cloud-deployment"
   ```
3. 安装 Vercel CLI：
   ```cmd
   npm install -g vercel
   ```
4. 登录：
   ```cmd
   vercel login
   ```
5. 部署：
   ```cmd
   vercel --prod
   ```
6. 按提示操作，等待完成

---

## 🎯 推荐顺序

1. **首选**：方案 1（使用 `deploy-simple.bat`）
2. **备选**：方案 2（Vercel 网站，最简单）
3. **最后**：方案 3（手动命令）

---

## ❓ 还是有问题？

查看详细文档：`MANUAL_DEPLOY.md`

---

**5 分钟内完成部署！** 🚀
