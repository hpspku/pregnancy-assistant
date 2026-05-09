# 怀孕助手 - Pregnancy Assistant App 🌸

一款温暖、贴心的孕期助手应用，参考小红书设计风格，帮助准妈妈们追踪孕期进度、了解胎儿发育、记录健康数据。

## ✨ 功能特点

### 📅 孕期追踪
- 输入末次月经日期，自动计算预产期
- 直观展示孕期进度和剩余天数
- 按周查看胎儿发育情况

### 👶 胎儿发育
- 每周胎儿大小类比（柠檬→芒果→西瓜）
- 详细的胎儿发育图文介绍
- 准妈妈身体变化指南

### ✅ 待办清单
- 预设孕期各阶段重要事项
- 自定义添加待办
- 完成进度追踪（撒花庆祝🎉）

### 💪 健康记录
- 体重记录及趋势图表
- 血压记录及状态提醒
- 重要产检时间节点提示

### 💡 每日贴士
- 饮食、运动、睡眠、护肤等全方位指南
- 一键收藏实用内容

## 🎨 设计亮点

- **小红书风格**：温暖粉色调，圆润卡片设计
- **清新可爱**：生动的水果类比，活泼的动效
- **极简交互**：单手操作，流程顺畅

## 🚀 快速开始

### 方法一：直接打开（推荐）
直接在浏览器中打开 `index.html` 文件即可使用

### 方法二：GitHub Pages 部署

1. **创建 GitHub 仓库**
   ```bash
   # 在 GitHub 上创建新仓库，命名为 pregnancy-assistant
   # 然后本地执行：
   
   git remote add origin https://github.com/YOUR_USERNAME/pregnancy-assistant.git
   git branch -M main
   git push -u origin main
   ```

2. **启用 GitHub Pages**
   - 进入仓库 Settings → Pages
   - Source 选择 "Deploy from a branch"
   - Branch 选择 "main" 和 "/ (root)"
   - 点击 Save

3. **访问你的应用**
   - 等待 1-2 分钟部署完成
   - 访问 `https://YOUR_USERNAME.github.io/pregnancy-assistant`

## 💻 本地开发

```bash
# 克隆仓库
git clone https://github.com/YOUR_USERNAME/pregnancy-assistant.git

# 进入目录
cd pregnancy-assistant

# 直接用浏览器打开 index.html
# 或者使用本地服务器
python -m http.server 8000
# 然后访问 http://localhost:8000
```

## 📱 使用说明

1. **首次使用**：输入末次月经第一天日期，开始孕期之旅
2. **数据保存**：所有数据保存在浏览器本地存储（LocalStorage）
3. **切换周数**：在"孕期"页面点击不同周数查看详情
4. **记录数据**：在"健康"页面点击 + 添加体重、血压记录

## 🛠 技术栈

- HTML5 + CSS3 + JavaScript（纯原生实现）
- LocalStorage 数据持久化
- GitHub Pages 免费托管

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License

---

Made with ❤️ for all expecting mothers
