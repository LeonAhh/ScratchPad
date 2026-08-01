# ScratchPad（临时文本托盘）

[English](#english) | [中文](#chinese)

---

<a id="english"></a>
## English

A minimalist macOS temporary text tray — quickly view, edit, clean, and save clipboard text without launching a full editor.

Forked from [Jingyuan-Zheng/TextTray](https://github.com/Jingyuan-Zheng/TextTray).

**Changes from original:**
- Removed AI / smart-assistance features (Apple Intelligence and system translation)
- Added window size and position persistence

**Features:** temporary pinned window, clipboard reading, line numbers, word wrap, font size, real-time stats, text cleanup (trim, blank lines, PDF line breaks, newlines, trailing spaces), copy all, save as multiple formats, print, bilingual UI.

**Privacy:** no database, no clipboard history, no background monitoring, no auto-save.

### Download

Download `ScratchPad.zip` from [Releases](https://github.com/LeonAhh/ScratchPad/releases), unzip, drag to `/Applications/`.

### Build

Requires macOS 13+, Xcode Command Line Tools:

```bash
./scripts/build.sh
```

### License

MIT

---

<a id="chinese"></a>
## 中文

macOS 极简临时文本托盘 — 快速查看、编辑、清理和保存剪贴板中的文字，无需打开完整的文本编辑器。

基于 [Jingyuan-Zheng/TextTray](https://github.com/Jingyuan-Zheng/TextTray) 修改而来。

**相比原版的改动：**
- 移除了 AI 智能辅助功能（Apple Intelligence 和系统翻译）
- 新增窗口大小和位置持久化

**功能：** 临时置顶窗口、读取剪贴板、行号、自动换行、字号调整、实时统计、文本清理（去空白、删空行、修复 PDF 断行、统一换行符、去行尾空格）、一键复制、多格式另存、打印、中英双语界面。

**隐私：** 无数据库、不记录剪贴板历史、不后台监听、不自动保存。

### 下载

从 [Releases](https://github.com/LeonAhh/ScratchPad/releases) 下载 `ScratchPad.zip`，解压后拖入 `/Applications/`。

### 构建

需要 macOS 13+、Xcode Command Line Tools：

```bash
./scripts/build.sh
```

### 许可

MIT
