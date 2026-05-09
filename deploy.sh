#!/bin/bash
# 怀孕助手 - GitHub 部署脚本

echo "🌸 怀孕助手 - 部署到 GitHub Pages"
echo "================================"

# 检查是否已设置 GitHub 用户信息
GIT_USER=$(git config --global user.name 2>/dev/null)
GIT_EMAIL=$(git config --global user.email 2>/dev/null)

if [ -z "$GIT_USER" ] || [ -z "$GIT_EMAIL" ]; then
    echo ""
    echo "⚠️  需要配置 Git 用户信息"
    echo ""
    read -p "请输入你的 GitHub 用户名: " GIT_USER
    read -p "请输入你的 GitHub 邮箱: " GIT_EMAIL
    
    git config --global user.name "$GIT_USER"
    git config --global user.email "$GIT_EMAIL"
    echo ""
    echo "✅ Git 用户信息已配置"
fi

echo ""
echo "📝 创建 GitHub 仓库..."
echo ""

# 使用 GitHub API 创建仓库
read -p "请输入你的 GitHub 个人访问令牌 (Personal Access Token): " GITHUB_TOKEN

REPO_NAME="pregnancy-assistant"
DESCRIPTION="一款温暖、贴心的孕期助手应用 - Pregnancy Assistant App"

# 创建 GitHub 仓库
curl -s -X POST \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "Content-Type: application/json" \
    https://api.github.com/user/repos \
    -d "{\"name\":\"$REPO_NAME\",\"description\":\"$DESCRIPTION\",\"private\":false,\"has_issues\":true,\"has_wiki\":false}" > /dev/null

# 添加远程仓库并推送
git remote set-url origin https://$GIT_USER:$GITHUB_TOKEN@github.com/$GIT_USER/$REPO_NAME.git 2>/dev/null || \
    git remote add origin https://$GIT_USER:$GITHUB_TOKEN@github.com/$GIT_USER/$REPO_NAME.git

git branch -M main
git push -u origin main --force

echo ""
echo "✅ 代码已推送！"
echo ""
echo "📋 接下来请手动完成以下步骤："
echo ""
echo "1. 访问 https://github.com/$GIT_USER/$REPO_NAME"
echo "2. 点击 Settings → Pages"
echo "3. 在 'Source' 下，选择 'Deploy from a branch'"
echo "4. 选择 'main' 分支和 '/ (root)' 文件夹"
echo "5. 点击 'Save'"
echo ""
echo "⏱️  等待 1-2 分钟后，你的应用将上线："
echo "   https://$GIT_USER.github.io/$REPO_NAME"
echo ""
echo "🎉 部署完成！"
