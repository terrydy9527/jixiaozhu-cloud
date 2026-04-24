# 🎉 技小助云端版 - 使用指南

## 📦 部署包位置

所有文件都在：`web-client/cloud-deployment/` 文件夹

---

## 🚀 快速开始（选择一种方式）

### 方式 1：Windows 用户

#### 方法 A：使用简化脚本（推荐）⭐

1. 打开 `web-client/cloud-deployment/` 文件夹
2. 双击 `deploy-simple.bat` 文件（避免编码问题）
3. 按提示完成 Vercel 账号登录（推荐使用 GitHub）
4. 等待 1-2 分钟部署完成
5. 获得访问链接
6. **开始使用！**

#### 方法 B：通过 Vercel 网站（最简单，无需命令）

1. 访问 https://vercel.com
2. 注册/登录账号（推荐使用 GitHub）
3. 点击 "New Project" → "Upload"
4. 将整个 `cloud-deployment` 文件夹拖进去
5. 等待 1-2 分钟
6. 获得访问链接
7. **开始使用！**

#### 方法 C：使用完整脚本

1. 打开 `web-client/cloud-deployment/` 文件夹
2. 双击 `deploy.bat` 文件
3. **如果遇到乱码，请使用方法 A 或方法 B**
4. 按提示完成 Vercel 账号登录
5. 等待部署完成
6. **开始使用！**

### 方式 2：macOS / Linux 用户

1. 打开终端
2. 进入目录：`cd web-client/cloud-deployment/`
3. 运行脚本：`./deploy.sh`
4. 按提示完成 Vercel 账号登录
5. 等待 1-2 分钟部署完成
6. 获得访问链接
7. **开始使用！**

### 方式 3：GitHub + Vercel（推荐开发者）

1. 将 `cloud-deployment` 文件夹推送到 GitHub
2. 访问 [Vercel](https://vercel.com) 并登录
3. 点击 "New Project"
4. 导入你的 GitHub 仓库
5. 点击 "Deploy"
6. 等待部署完成
7. **开始使用！**

### 方式 4：直接上传到 Vercel

1. 访问 [Vercel](https://vercel.com) 并登录
2. 点击 "New Project"
3. 点击 "Upload"
4. 将整个 `cloud-deployment` 文件夹拖进去
5. 等待上传和部署完成
6. **开始使用！**

---

## ✅ 部署成功标志

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

## 🌐 如何使用

### 在电脑上使用
直接打开部署链接即可

### 在教学一体机上使用
1. 打开一体机的浏览器
2. 输入部署链接
3. 添加到书签（强烈推荐！）
4. 下次直接点击书签访问

### 在手机/平板上使用
直接打开链接即可

### 分享给其他人
直接复制链接发送，他们无需任何配置即可使用！

---

## 💡 使用技巧

### 1. 保存到书签
- Chrome/Edge：按 `Ctrl + D`
- 命名：技小助
- 下次直接点击访问

### 2. 创建桌面快捷方式
- 打开链接
- 浏览器菜单 → 更多工具 → 创建快捷方式
- 双击快捷方式直接打开

### 3. 分享给学生
- 将链接发送到班级群
- 学生手机/电脑都可以访问
- 课后也能使用

### 4. 多人同时使用
支持多用户同时访问，无限制！

---

## 📋 功能清单

### ✅ 已实现功能
- 📚 知识问答
- 💡 设计指导
- 🔬 实验辅助
- 📷 图片识别
- 💻 代码解释
- 🌐 联网搜索
- 📊 考试模式
- 🔍 知识库搜索

### 快捷功能按钮
- 查考点
- 求思路
- 搜知识
- 考试模式
- 图片识别
- 代码解释
- 联网搜索

---

## ⚠️ 遇到问题？

### 脚本显示乱码或报错？

如果运行 `deploy.bat` 出现乱码（如：'震插凿瑁?node'），请按以下步骤解决：

**方案 1：使用简化脚本（推荐）**
- 双击 `deploy-simple.bat`（而不是 `deploy.bat`）

**方案 2：通过 Vercel 网站部署**
- 访问 https://vercel.com
- 登录后点击 "New Project" → "Upload"
- 拖拽 `cloud-deployment` 文件夹
- 点击 "Deploy"

**方案 3：手动部署**
- 打开 CMD
- 输入：`cd /d "你的路径\cloud-deployment"`
- 输入：`npm install -g vercel`
- 输入：`vercel login`
- 输入：`vercel --prod`

详细说明请查看：`QUICK_FIX.md` 或 `MANUAL_DEPLOY.md`

---

## ❓ 常见问题

### Q: 部署需要多久？
**A:** 首次部署 1-2 分钟，后续更新更快

### Q: 需要付费吗？
**A:** 不需要！Vercel 免费版完全够用

### Q: 链接会失效吗？
**A:** 不会，链接永久有效

### Q: 可以同时多人使用吗？
**A:** 可以！支持多用户同时访问

### Q: 如何更新应用？
**A:** 重新运行部署脚本即可

### Q: 遇到错误怎么办？
**A:** 查看文档或联系技术支持

---

## 📖 文档索引

| 文档 | 说明 | 位置 |
|------|------|------|
| **README.md** | 完整部署文档 | `cloud-deployment/README.md` |
| **QUICK_START.md** | 快速开始指南 | `cloud-deployment/QUICK_START.md` |
| **DELIVERY_SUMMARY.md** | 交付总结 | `cloud-deployment/DELIVERY_SUMMARY.md` |
| **PROJECT_STRUCTURE.md** | 项目结构 | `cloud-deployment/PROJECT_STRUCTURE.md` |

---

## 🔧 技术支持

### 查看部署日志
1. 登录 [Vercel](https://vercel.com)
2. 进入项目 Dashboard
3. 点击 "Logs" 查看实时日志

### 查看访问统计
1. 登录 Vercel
2. 进入项目 Dashboard
3. 点击 "Analytics" 查看访问量

### 回滚版本
1. 进入 Vercel 项目
2. 点击 "Deployments"
3. 找到历史版本
4. 点击 "Promote to Production"

---

## 🎯 下一步

1. **立即部署**
   - 选择一种部署方式
   - 执行部署
   - 获得访问链接

2. **开始使用**
   - 在浏览器打开链接
   - 保存到书签
   - 测试所有功能

3. **分享给他人**
   - 分享链接给其他教师
   - 分享链接给学生
   - 收集反馈

---

## 🎊 恭喜！

你现在拥有了一个：
- ✅ 全球可访问的智能助教
- ✅ 完全免费的云端服务
- ✅ 支持多平台使用
- ✅ 功能完整强大
- ✅ 易于维护更新

**立即开始部署吧！🚀**

---

## 📞 联系方式

- 📖 查看文档：`cloud-deployment/README.md`
- 🔍 Vercel 官方文档：https://vercel.com/docs

---

**祝你使用愉快！🎉🎓**
