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
### BASE URL
```
https://evene.jp
```
### PATH
```
GET /api/charger_spots
```

### パラメータ
|パラメータ名|説明|値の例|
|----|----|----|
|sw_lat|検索したいエリアの**最南西**（左下）の**緯度**|35.683331703634124|
|sw_lng|検索したいエリアの**最南西**（左下）の**経度**|139.7657155055581|
|ne_lat|検索したいエリアの**最北東**（右上）の**緯度**|35.686849507072736|
|ne_lng|検索したいエリアの**最北東**（右上）の**経度**|139.77340835691592|

 - 例：
```
/api/charger_spots?sw_lat=35.683331703634124&sw_lng=139.7657155055581&ne_lat=35.686849507072736&ne_lng=139.77340835691592
```
※現在開発中のため、URLやパスは予告なく変更される可能性があります。変更した場合は事前にお知らせしますが、お伝えもれていた場合はご連絡ください。

### レスポンス
```
charger_spots: Array of objects (ChargerSpot)
  Array [
    name: 充電スポットの名称
    latitude: 緯度
    longitude: 経度
    service_time_note: サービス提供時間の備考
    charger_spot_service_times: Array of objects (ChargerSpotServiceTime)
      Array [
        business_day: 営業日/定休日
        day: 曜日
        start_time: 開始時刻
        end_time: 終了時刻
      ]
    charger_devices: Array of objects (ChargerDevice)
      Array [
        name: 充電器の名称
        maker_code: メーカーコード
        product_code: 製品コード
        serial_number: シリアル番号
        schedule_mode: スケジュール動作モード
        certification_method: 認証方式
        service_start_time: サービス開始時刻
        service_end_time: サービス終了時刻
        allow_current: 充電許容電流
        max_charge_time: 最大充電時間
        latitude: 緯度
        longitude: 経度
        display_status: 表示用ステータス
        power: 充電電力
      ]
  ]
```
