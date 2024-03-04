# Flutter Coding Challenge

## Instructions

### Steps

1. このリポジトリをForkしてください。
2. 新しくブランチを切ってください。
(ブランチ名は `challenge1/YOURNAME(本名orGithub Account name)` (eg. `challenge1/shirakia`))
3. 開発用のディレクトリをリポジトリ直下に作成してください。(eg. shirakia)
4. ディレクトリ以下で実装を進めてください。
5. 終了後、PullRequestを作成し、URLをご連絡ください。
6. PullRequestのURLをお伝えいただいた後でもcommitしていただいて構いません。

## Challenge

Flutterで充電スポットマップ画面を作成してください。

以下、画面の仕様や使用するAPIの情報です。これらの仕様についてチャレンジ期間の中で可能な範囲で実装してください。

仕様や実装について不明な点があれば適宜ご相談ください。

### 画面仕様
- マップ上の充電スポットのある場所にマーカーを表示してください
- マーカーにはそのスポットの充電器の数を表示します
- 画面下部には各充電スポットの名称や写真、営業時間などが記載されたカードをカルーセル表示してください
- 画面デザインやその他の細かい仕様については [Figma](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/?node-id=1414-77) をご覧ください（Figmaのアカウントを作成すると細かいところまで閲覧できるようになります）。
    - Figma内部にAPIで取得した値をどのように使うかについて記載しました。ご活用ください。

### 使用パッケージについて
実装の際には以下パッケージを使用してください。
バージョンの指定はございません。
- [google_maps_flutter](https://pub.dev/packages/google_maps_flutter)
- [geolocator](https://pub.dev/packages/geolocator)

### API

- 充電スポットの情報を取得するには、[API仕様書](https://stg.evene.jp/apidocs/charger_spots#/charger_spots) のAPIを使用してください。
- APIに必要な認証トークン `X-EVENE-NATIVE-API-TOKEN` は別途お伝えいたします。
- 仕様書 から [openapi-generator](https://openapi-generator.tech/) を使用して、 dio/http パッケージを使用してAPI実行できるようになっています。ぜひ活用ください。
  - [使用方法](./docs/guide_api_sdk.md)
  - もちろんカスタマイズもご自由に実施ください。使用しなくても問題ございません。

