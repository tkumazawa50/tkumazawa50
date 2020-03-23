# air-temp

[WIP] 航空従事者学科試験 (航空通信士) の過去問を出題する

see also: https://wktk.jp/entry/flight-radio-operator/

## 使用方法

```sh
git clone https://github.com/wktk/air-temp.git
cd air-temp
ruby quiz.rb
```

<img src="https://raw.githubusercontent.com/wktk/wktk.jp/763ab260faf4b519d624b997ea1d24a7d7c0775f/content/blog/2019-11-09/quiz.gif" width="380">

## CSV の形式について

```
問題文, 選択肢1, 選択肢2, 選択肢3, 選択肢4, 選択肢5, 正答番号, 試験年月, 科目, 問題番号, 問題文の続き, 画像有無
```

- `選択肢4`, `選択肢5`, `問題文の続き` は空欄の場合がある
- `画像有無` は図表等の画像を伴う出題であれば `TRUE` または `true`, それ以外は空欄
  - 画像はまだ取り込んでいないので PDF を参照
- 一部手入力しているため誤りがある可能性がある
