## チャレンジアプリ

## 対応環境
今回は時間的な制限があるため、iOSのみ対応しています。Androidでは動作確認していないです。

## 開発環境
- Flutter: 3.16.9(stable)
- Dart: 3.2.6
- Android Studio (version 2023.1)
- Xcode(14.3.1)

## 環境構築
### 1. Google Maps Platform API Keyの設定
このアプリではGoogle Mapsを使用しているため、[マニュアル](https://developers.google.com/maps/get-started?hl=ja)を参考にAPI Keyを用意してください

1. `cp -p ios/Runner/EnvironmentTemplate.swift ios/Runner/Environment.swift `でiOS向けのEnvを用意します。
2. `GOOGLE_MAPS_API_KEY`に用意したAPI KEYを設定してください。

### 2. EV充電エネチェンジAPI TOKENの設定
APIを利用するのにTOKENが必要なため、別途入手してください。

1. `cp -p lib/config/env_template.json lib/config/env.json`でEnvを用意します
2. `EVENE_NATIVE_API_TOKEN`にTOKENを設定してください

### ビルド
開発環境に記載のツールは事前にインストールしてください。

1. `bin/run_build_runner`を実行
2. Android Studioなどで`pubspec.yml`のパッケージをインストールした後にビルド実行してください


## 対応箇所
### [お題](https://github.com/enechange/flutter-challenge)
おおよそ以下の範囲を実装しましたが、`検索バー`、`OS標準アプリで地図経路`は未実装です。

1. マップ/初期表示
2. マップ/スポットにフォーカス
3. マップ/エリアを移動


### デザイン
[Figma](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/ENECHANGE-%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%8B%E3%82%A2%E3%83%81%E3%83%A3%E3%83%AC%E3%83%B3%E3%82%B8?type=design&node-id=1414-77&mode=design&t=hJNZeRKSZCxkQq4l-0)


## 設計方針
あとで記入

## もしかっちり作る時間があるならばのIF
1. Typography/Themeの適用。MaterialAppのlightTheme、darkThemeごとにコンポーネントの標準スタイルやフォントを設定。アプリ全体で表記揺れが発生しないにする。
1. View Componentがモデル依存になっているのを止める。依存すること自体を否定してはいないが、View単体のテストやモックがしにくいのとModelに改修が入った場合、Viewに影響範囲を及ぼしてしまうため、Viewそのものはモデル依存せずに作る。そのためにViewModel層でViewに必要なClassにデータの詰めかえを行う。
1. GoogleMapsのicon生成処理でパフォーマンス的にイマイチな可能性があり、富豪的な実装となっている。キャッシュ化もしくは並列で生成できるように改善したほうがよいかもしれない。要研究。
1. 同様にViewModelで状態変化を起こした時にViewの根本からリビルドしているが、必要なViewのみリビルドさせるようにConsumerで囲ったりする余地はあると思われ。富豪的実装。
1. ViewModel側で各UiStateを定義しているが、View側でError Causeごとに適切なハンドリングを行う。
1. Flutterのバージョン管理をfvm/asdfなどに任せる
1. envファイルのセットアップを自動化する。秘密KeyなどはGoogle Secret Managerに配置し、ビルド時にDLしてEnvを生成し配置する。GitHub Secretsでもよいが、ローカルから参照できないので使いにくい。

