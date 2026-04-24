#!/bin/bash

# 技小助 v2.0 - 一键部署到 Vercel (Linux/macOS)

echo "========================================"
echo "   技小助 v2.0 - 一键部署到 Vercel"
echo "========================================"
echo

# 检查 Node.js 是否已安装
echo "[1/5] 检查 Node.js 环境..."
if ! command -v node &> /dev/null; then
    echo "❌ 未检测到 Node.js！"
    echo "请先安装 Node.js：https://nodejs.org/"
    exit 1
fi
echo "✅ Node.js 已安装"
node --version
echo

# 检查 npm 是否已安装
echo "[2/5] 检查 npm 环境..."
if ! command -v npm &> /dev/null; then
    echo "❌ 未检测到 npm！"
    exit 1
fi
echo "✅ npm 已安装"
npm --version
echo

# 检查是否已安装 Vercel CLI
echo "[3/5] 检查 Vercel CLI..."
if ! command -v vercel &> /dev/null; then
    echo "正在安装 Vercel CLI..."
    npm install -g vercel
    if [ $? -ne 0 ]; then
        echo "❌ Vercel CLI 安装失败！"
        exit 1
    fi
    echo "✅ Vercel CLI 安装成功"
else
    echo "✅ Vercel CLI 已安装"
fi
echo

# 检查是否已登录
echo "[4/5] 检查登录状态..."
vercel whoami &> /dev/null
if [ $? -ne 0 ]; then
    echo "未登录 Vercel，即将打开登录页面..."
    echo "请使用 GitHub 账号登录（推荐）"
    vercel login
    if [ $? -ne 0 ]; then
        echo "❌ 登录失败！"
        exit 1
    fi
    echo "✅ 登录成功"
else
    echo "✅ 已登录 Vercel"
    vercel whoami
fi
echo

# 开始部署
echo "[5/5] 开始部署到 Vercel..."
echo
echo "提示："
echo "- 项目名称：jixiaozhu-cloud"
echo "- 部署环境：Production（生产环境）"
echo "- 部署时间：约 1-2 分钟"
echo

read -p "按 Enter 键继续..."

vercel --prod --yes

if [ $? -ne 0 ]; then
    echo
    echo "❌ 部署失败！"
    echo "请检查错误信息并重试"
    exit 1
fi

echo
echo "========================================"
echo "   ✨ 部署成功！"
echo "========================================"
echo
echo "你的技小助已经部署到云端！"
echo
echo "访问链接："
echo "https://jixiaozhu-cloud.vercel.app"
echo
echo "🎉 现在你可以在任何有网络的地方访问了！"
echo
echo "提示："
echo "- 首次打开可能需要 1-2 分钟初始化"
echo "- 建议将链接保存到书签"
echo "- 可以分享给其他教师使用"
echo
