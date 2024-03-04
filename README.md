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

また、このChallengeはプログラムの完成度を求めるものではなく、挑戦いただく方のスキルレベルをベースに、以下の項目などを総合的に見させて頂く場として作成しております。
- どのくらい時間を掛けられてどこまで実装できたか
- コードの品質
- 実装に関する説明
- 質疑応答


### 画面仕様
- マップ上の充電スポットのある場所にマーカーを表示してください
- マーカーにはそのスポットの充電器の数を表示します
- 画面下部には各充電スポットの名称や写真、営業時間などが記載されたカードをカルーセル表示してください
- 画面デザインやその他の細かい仕様については [Figma](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/?node-id=1414-77) をご覧ください（Figmaのアカウントを作成すると細かいところまで閲覧できるようになります）。
- Figma内で(Option)と記載させていただいた仕様については、余力があったらトライしてください
- 課題の優先度は、高い順に以下の順番になります。確保できる時間に応じて実施する量を各自調整してください。
1. [マップ/初期表示](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/ENECHANGE-%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%8B%E3%82%A2%E3%83%81%E3%83%A3%E3%83%AC%E3%83%B3%E3%82%B8?type=design&node-id=1414-78&mode=design&t=HALw18VIzoL2un47-4)
1. [マップ/スポットにフォーカス](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/ENECHANGE-%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%8B%E3%82%A2%E3%83%81%E3%83%A3%E3%83%AC%E3%83%B3%E3%82%B8?type=design&node-id=1417-511&mode=design&t=HALw18VIzoL2un47-4)
1. [マップ/エリアを移動](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/ENECHANGE-%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%8B%E3%82%A2%E3%83%81%E3%83%A3%E3%83%AC%E3%83%B3%E3%82%B8?type=design&node-id=1414-319&mode=design&t=HALw18VIzoL2un47-4)

### 使用パッケージについて
実装の際に、以下パッケージは必ず使用してください。
バージョンの指定はございません。
- [google_maps_flutter](https://pub.dev/packages/google_maps_flutter)
- [geolocator](https://pub.dev/packages/geolocator)

### API

- 充電スポットの情報を取得するには、[API仕様書](https://stg.evene.jp/apidocs/charger_spots#/charger_spots) のAPIを使用してください。
- APIに必要な認証トークン `X-EVENE-NATIVE-API-TOKEN` は別途お伝えいたします。
- 仕様書 から [openapi-generator](https://openapi-generator.tech/) を使用して、 dio/http パッケージを使用してAPI実行できるようになっています。ぜひ活用ください。
    - [使用方法](./docs/guide_api_sdk.md)   
    - もちろんカスタマイズもご自由に実施ください。使用しなくても問題ございません。

### 今回の課題におけるAPIの使用について
APIの中で、メインで活用するパラメーターについて紹介します
ここで記載されているパラメーター以外も、適宜用途に応じて使用してください

####  リクエスト
本課題では緯度経度パラメータ（`sw_lat`,`sw_lng`,`ne_lat`,`ne_lng`）のみを使用します

#### レスポンス
- `images`: スポットのサムネイル表示に使用します
- `charger_devices`: カード情報やマーカーのスポット数の計算のために使用します
- `charger_spot_service_times`: カード内の「営業中/営業時間外」項目で使用します
- (`gogoev` と記載のあるパラメーターがいくつかありますが、本課題では使用しません)
