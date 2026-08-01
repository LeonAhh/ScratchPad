# Text Tray

A minimalist macOS temporary text tray — quickly view, edit, clean, and save clipboard text without launching a full editor.

This is a fork of [Jingyuan-Zheng/TextTray](https://github.com/Jingyuan-Zheng/TextTray) with the following modifications:

- **Removed**: AI / smart-assistance features (Apple Intelligence integration and system translation)
- **Added**: Window size persistence — the window remembers its size and position across launches

## Features

- Temporary standalone window (can be pinned on top)
- Read current clipboard content
- Close to discard — text is never saved automatically
- Line numbers, word wrap, font size adjustment
- Real-time statistics: characters, words, lines, selection count, cursor position
- Quick text cleanup: trim, remove blank lines, repair PDF line breaks, normalize newlines, trim trailing spaces
- Copy all, save as (txt, md, json, csv, html, swift, py, js, or custom extension), print
- Bilingual interface (English / Chinese)
- Preferences remembered across launches: language, pin state, font size, line numbers, word wrap, stats display, **window size and position**
- **Privacy**: no database, no clipboard history, no background monitoring, no auto-save

## Installation

Download `TextTray.zip` from [Releases](https://github.com/LeonAhh/TextTray/releases), unzip, and drag `Text Tray.app` to `/Applications/`.

## Build from Source

**Requirements**: macOS 13+, Xcode Command Line Tools, Swift compiler

```bash
./scripts/build.sh
```

**Output**: `build/Text Tray.app` and `releases/TextTray.zip`

## Launch via Shortcuts

Use the "Run Shell Script" action in Shortcuts:

```bash
open -n "/Applications/Text Tray.app"
```

Or with text input:

```bash
APP="/Applications/Text Tray.app"
printf '%s' "$SHORTCUT_INPUT" | "$APP/Contents/MacOS/TemporaryClipboardViewer" --stdin
```

## License

MIT
