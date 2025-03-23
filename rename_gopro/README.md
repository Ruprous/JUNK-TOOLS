# GoProファイル連番リネーマー（GH0 → プレフィックス_v_連番）

GoProで撮影された動画ファイル（例：`GH0xxxx.MP4`）を、  
**更新日時（＝撮影時刻）順に並べて、`[プレフィックス]_v_001.mp4` のように連番でリネームするツール**です。

---

## 🔧 主な機能 / Features

- フォルダ選択をGUIで行える（パス入力不要）
- ファイル名のプレフィックスを任意入力可能（例：`trip`, `tokyo2025`）
- 更新日時（LastWriteTime）でソートし、正しい撮影順で並び替え
- 出力形式：`[prefix]_v_001.mp4`, `[prefix]_v_002.mp4`, ...
- `GH0*.mp4` のファイルのみ対象
- インストール不要、Windowsでそのまま実行可能

---

## 🚀 使い方 / How to Use

1. このリポジトリから以下の2ファイルをダウンロード：
    - `rename_gopro.bat`
    - `rename_gopro.ps1`

2. 同じフォルダに置く

3. `rename_gopro.bat` をダブルクリックで実行

4. 最初に**ファイル名のプレフィックスを入力**

5. 次に、**リネーム対象のフォルダを選択**

6. 完了！ファイルは以下のように変換されます：

GH02030.MP4 → trip_v_001.mp4
GH02031.MP4 → trip_v_002.mp4
...


---

## 🛡 注意事項 / Notes

- 元のファイル名は上書きされます。**必要があれば事前にバックアップを取ってください。**
- リネーム対象は `.mp4` かつ `GH0` で始まるファイルのみです。
- **撮影順で並び替えたい場合、"更新日時" を基準にしています。**
- Windows PowerShell（5.1以上）で動作確認済みです。

---

## 🌍 英語での概要（English Summary）

This is a simple renaming tool for GoPro video files (`GH0xxxx.MP4`) that:

- Renames files in shooting order (based on `LastWriteTime`)
- Lets you choose the prefix via input box
- Outputs files like `yourprefix_v_001.mp4`
- Only targets files matching `GH0*.mp4`
- Fully GUI based, no terminal typing needed
- No install required (Windows only)

---

## 🧪 動作例 / Example

入力ファイル：

GH02030.MP4 GH02031.MP4 GH02032.MP4

プレフィックス：`geo`

変換後：

geo_v_001.mp4 geo_v_002.mp4 geo_v_003.mp4

---

## 📄 ライセンス / License

MIT License — 改変・再配布・商用利用すべてOKです。
