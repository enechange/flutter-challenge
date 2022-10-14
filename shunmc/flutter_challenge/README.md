# flutter_challenge

dart-defineでAPI_TOKEN, GOOGLE_API_KEYを指定してビルドしてください。
| キー | 入れるべき値 |
| --- | --- |
| API_TOKEN | エネチェンジEV充電サービスAPIで利用する認証キー(X-EVENE-NATIVE-API-TOKEN) |
| GOOGLE_API_KEY | GoogleMapPlatformで利用するAPIキー |

実行例
```bash
% flutter run --dart-define=API_TOKEN=XXX --dart-define=GOOGLE_API_KEY=XXX
```
