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

## Challenge1 - 充電器一覧およびマップ画面の作成

1. まず、[Figma](https://www.figma.com/file/q4i9uo1n4poIbO7iGPbqQH/?node-id=0%3A1)をご覧下さい。（アカウントを作成すると細かいところまで閲覧できるようになります）
2. 充電スポット、充電器情報を取得するためのエンドポイント（後述）を叩いていただき、充電スポット情報を一覧で表示する画面を実装してください。
3. 一覧の一つをクリックするとその地点を中心とした地図を表示し、地図の下部には充電スポット情報を表示するようにしてください。
4. (Optional) 地図下部の充電器情報を左右にスワイプすると前後の充電スポット情報を表示し、地図の中心も更新される。

5. (Optional) 地図の中心を移動したら、表示エリアの充電スポットを再取得するボタンと機能の追加。

6. 不明な点があれば、適宜ご相談ください。

※4, 5のOptionalは余裕があれば実装してみてください。

## 充電器情報を取得するためのエンドポイントについて
 - [こちら](https://stg.evene.jp/apidocs/charger_spots#/charger_spots)をご覧ください。
 - staging環境では認証トークン（X-EVENE-NATIVE-API-TOKEN）は設定不要ですのでstagingをお使いください。
