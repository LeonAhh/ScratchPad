# ScratchPad（临时文本托盘）

A minimalist macOS temporary text tray — quickly view, edit, clean, and save clipboard text without launching a full editor.

Forked from [Jingyuan-Zheng/TextTray](https://github.com/Jingyuan-Zheng/TextTray) with these changes:

- **Removed**: AI / smart-assistance features (Apple Intelligence and system translation)
- **Added**: Window size persistence — window remembers its size and position across launches

## Features

- Temporary standalone window (can be pinned on top)
- Read current clipboard content
- Close to discard — text is never saved automatically
- Line numbers, word wrap, font size adjustment
- Real-time statistics: characters, words, lines, selection count, cursor position
- Quick text cleanup: trim, remove blank lines, repair PDF line breaks, normalize newlines, trim trailing spaces
- Copy all, save as (txt, md, json, csv, html, swift, py, js, or custom extension), print
- Bilingual interface (English / 中文)
- Preferences remembered: language, pin, font size, line numbers, word wrap, stats, **window size and position**
- **Privacy**: no database, no clipboard history, no background monitoring, no auto-save

## Build from Source

**Requirements**: macOS 13+, Xcode Command Line Tools

```bash
./scripts/build.sh
```

## License

MIT
