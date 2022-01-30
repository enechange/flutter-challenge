
# Schedule

## 2022/1/23

- [x]  環境構築
    - [x]  [https://docs.flutter.dev/get-started/install/macos](https://docs.flutter.dev/get-started/install/macos)
    - [x]  今回はIDEにVSCode(1.63.2)を使用する
        - [x]  DartおよびFlutter拡張をインストール（v3.32.0）
    - [x]  Flutter SDK, AndroidStudio, Xcodeなどをインストール
    - [x]  flutter doctor

        ```swift
        % flutter doctor
        Doctor summary (to see all details, run flutter doctor -v):
        [✓] Flutter (Channel stable, 2.8.1, on macOS 11.6 20G165 darwin-x64, locale ja-JP)
        [✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
        [✓] Xcode - develop for iOS and macOS (Xcode 13.2.1)
        [✓] Chrome - develop for the web
        [✓] Android Studio (version 2020.3)
        [✓] VS Code (version 1.63.2)
        [✓] Connected device (3 available)
        ```


## 20221/24

- [x]  Dart/Flutter の基本
    - [x]  公式のリファレンス、チュートリアル
        - [x]  [https://docs.flutter.dev/cookbook](https://docs.flutter.dev/cookbook)
    - [x]  可視性
        - [x]  先頭がアンスコ _hogehoge → private
    - [x]  変数
        - [x]  var/static/final/const
        - [x]  [https://qiita.com/uehaj/items/7c07f019e05a743d1022](https://qiita.com/uehaj/items/7c07f019e05a743d1022)
    - [x]  型
        - [x]  String/int/double/num/...
    - [x]  null
        - [x]  !で強制非null
    - [x]  制御構文
- [x]  実際にコードを書いて確認する
    - [x]  DartPad
        - [x]  [https://dartpad.dev/](https://dartpad.dev/)
        - [x]  チャレンジのAPIがCORSに対応していなかった（2022/1/26）

## 2022/1/25

- [x]  課題で用意されたAPIにアクセスしてデータ（json）の中身を確認する
    - [x]  2022/1/27：レスポンスが変わる
- [x]  jsonを扱うためのデータ構造（Classなど）を検討する
    - [x]  Classを作成する
    - [x]  今回は JSON to Dart を使う
        - [x]  [https://javiercbk.github.io/json_to_dart/](https://javiercbk.github.io/json_to_dart/)
- [x]  jsonをClassにデコードする処理の実装

## 2022/1/26

- [x]  アプリで起動時にhttp通信を行いデータを取得する
- [x]  取得したjsonをClassにデコードする

## 2022/1/27

- [x]  ClassのListを列挙してCardのWidgetで表示する
    - [x]  スポット名を表示する
    - [x]  各項目のアイコン、ラベル、値を表示する
        - [x]  機器の台数を計算する関数を作成する
        - [x]  トータルの出力を計算する関数を作成する
    - [x]  画像を表示する
        - [x]  APIに画像の情報が含まれていないので仮でローカルフォルダの画像を表示する

## 2022/1/28

## 2022/1/29

- [x]  充電スポットの情報を表示するために必要な関数などを実装

## 2022/1/30

- [x]  ClassのListを列挙してCardのWidgetで表示する
    - [x]  各項目のアイコン、ラベル、値を表示する
        - [x]  スポットのデータから画面表示をした曜日の営業時間を取得する関数を作成する
        - [x]  スポットのデータから定休日の文字列を生成する関数を作成する
- [x]  祝日を判定するクラスを作成する
- [x]  Unit Testを実装する

## 2022/1/31

- [ ]  mapの動作検証
- [ ]  画面遷移の実装方法の検証
- [ ]  Listの項目をタップしたらmapの画面に遷移する
- [ ]  mapを表示する
- [ ]  mapにピンを指す

## 2022/2/1

- [ ]  mapの座標・表示範囲を元にAPIからSpotsを取得する
- [ ]  取得したSpotsをCard形式でmapの画面下にオーバーフローする形で横一列で表示する
- [ ]  Cardを横スクロール可能にする
- [ ]  Cardをタップするとmapがスクロールする

## 2022/2/2

- [ ]  (Optional課題)
- [ ]  (Optional課題)
- [ ]  README.mdの更新

## 2022/2/3

- [ ]  提出

## TODO

- [ ]  Classのgetterの追加、final等
- [ ]  State管理系のパッケージ導入
- [ ]  通信周りのエラー処理
- [ ]  Unit Test
    - [ ]  JSONのデコード処理
    - [ ]  関数
        - [ ]  曜日に応じて営業時刻を返す処理
        - [ ]  定休日の文字列生成処理
    - [ ]  UI
