# 🚀 技小助云端版 - 快速开始

## ⚡ 3 分钟快速部署

### 方法 1：使用自动部署脚本（推荐 Windows）

1. **下载部署包**
   - 将 `cloud-deployment` 文件夹复制到电脑任意位置

2. **双击运行**
   - 双击 `deploy.bat` 文件
   - 脚本会自动完成所有步骤

3. **等待部署**
   - 等待 1-2 分钟
   - 部署成功后，会显示访问链接

4. **开始使用**
   - 打开链接：`https://jixiaozhu-cloud.vercel.app`
   - 开始使用！

---

### 方法 2：使用 GitHub + Vercel（推荐所有平台）

#### 步骤 1：推送到 GitHub

```bash
cd cloud-deployment
git init
git add .
git commit -m "首次部署技小助"
git remote add origin https://github.com/你的用户名/jixiaozhu-cloud.git
git push -u origin main
```

#### 步骤 2：在 Vercel 导入项目

1. 访问 [Vercel](https://vercel.com) 并登录（使用 GitHub）
2. 点击 "New Project"
3. 在 "Import Git Repository" 中找到你的仓库
4. 点击 "Import"
5. 点击 "Deploy"

#### 步骤 3：获取访问链接

部署完成后，你会得到一个链接，类似：
```
https://jixiaozhu-cloud.vercel.app
```

---

### 方法 3：直接上传到 Vercel（无需 Git）

#### 步骤 1：准备文件

确保文件夹包含：
```
cloud-deployment/
├── public/
│   └── index.html
├── api/
│   └── proxy.js
├── vercel.json
└── package.json
```

#### 步骤 2：上传

1. 访问 [Vercel](https://vercel.com) 并登录
2. 点击 "New Project"
3. 点击 "Upload"
4. 将整个 `cloud-deployment` 文件夹拖入
5. 等待上传完成
6. 点击 "Deploy"

#### 步骤 3：获取链接

部署完成后，会显示访问链接。

---

## 🌐 使用方法

### 在电脑浏览器访问
直接打开部署链接即可

### 在教学一体机使用
1. 打开一体机的浏览器
2. 输入链接
3. 添加到书签（强烈推荐！）
4. 开始使用

### 在手机/平板使用
同样直接打开链接

### 分享给其他教师
直接分享链接即可，他们无需任何配置！

---

## 🔑 访问链接示例

部署成功后，你会得到类似这样的链接：
```
https://jixiaozhu-cloud-abc123.vercel.app
```

**复制这个链接，然后在任何地方打开！**

---

## 💡 小技巧

### 1. 保存到书签
- Chrome/Edge: Ctrl + D
- 命名：技小助
- 下次直接点击书签即可

### 2. 设置为浏览器主页
- 浏览器设置 → 主页
- 输入部署链接
- 每次打开浏览器自动进入

### 3. 创建桌面快捷方式
- 打开链接
- 浏览器菜单 → 更多工具 → 创建快捷方式
- 双击快捷方式直接打开

### 4. 分享给学生
- 将链接发送到班级群
- 学生手机/电脑都可以访问
- 课后也能使用

---

## ⚙️ 自定义域名（可选）

如果你有自己的域名，可以绑定：

1. 在 Vercel 项目中，进入 "Settings" → "Domains"
2. 添加域名，如：`jixiaozhu.yourschool.com`
3. 配置 DNS 记录
4. 等待 SSL 证书生成（约 1 分钟）

完成后，使用你的域名访问！

---

## 🎯 部署成功标志

看到以下内容，说明部署成功：

```
✨ Production: https://jixiaozhu-cloud.vercel.app
```

或者访问链接后，看到技小助的界面：

```
🎓 技小助 v2.0
👋 你好！我是技小助
```

---

## ❓ 常见问题

### Q: 部署需要多久？
A: 首次部署约 1-2 分钟，后续更新更快

### Q: 需要付费吗？
A: 不需要！Vercel 免费版完全够用

### Q: 链接会失效吗？
A: 不会，链接永久有效（除非你删除项目）

### Q: 可以同时多人使用吗？
A: 可以！支持多用户同时访问

### Q: 数据会保存在云端吗？
A: 对话不会保存，每次访问都是新的会话

### Q: 部署失败怎么办？
A: 查看错误信息，通常是：
   - 网络问题：稍后重试
   - 文件缺失：检查文件结构
   - 登录问题：重新登录 Vercel

---

## 📊 监控使用情况

### 查看访问量
1. 登录 Vercel
2. 进入项目 Dashboard
3. 点击 "Analytics" 标签
4. 查看 PV、UV 等数据

### 查看日志
1. 进入 Vercel 项目
2. 点击 "Logs" 标签
3. 查看实时请求日志

---

## 🔄 更新应用

### 方法 1：Git 自动更新
```bash
git add .
git commit -m "更新功能"
git push
```
Vercel 会自动检测并重新部署

### 方法 2：手动更新
```bash
vercel --prod
```

---

## 🎉 开始使用吧！

现在你已经了解了如何部署，选择一个方法开始吧！

**推荐顺序：**
1. 如果是 Windows：使用 `deploy.bat`（最简单）
2. 如果熟悉 Git：使用 GitHub + Vercel
3. 如果不想用 Git：直接上传到 Vercel

**5 分钟内，你就可以拥有一个全球可访问的技小助！** 🚀

---

## 📞 需要帮助？

- 查看 [完整部署文档](README.md)
- 查看 [Vercel 官方文档](https://vercel.com/docs)
- 联系技术支持

**祝使用愉快！** 🎓✨
