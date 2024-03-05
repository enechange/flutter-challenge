# OpenAPIから生成したモデル、クライアントの活用方法

HTTPリクエストのクライアントとして、[dio](https://pub.dev/packages/dio) / [http](https://pub.dev/packages/http/versions) を用意しました
`open_api` ディレクトリ配下は以下のような構成になっています。
```
open_api
├── definitions
│   └── components
├── dist_dio
│   ├── doc
│   ├── lib
│   │   └── src
│   │       ├── api
│   │       ├── auth
│   │       └── model
│   └── test
└── dist_http
    ├── doc
    ├── lib
    │   ├── api
    │   ├── auth
    │   └── model
    └── test
```
- definitions: OpenAPIの定義ファイルが配置されています。
- dist_dio: dio用のクライアント、モデルが配置されています
- dist_http: http用のクライアント、モデルが配置されています 

## 検証環境
以下の環境で動作することを検証しました。
課題の環境を指定するものではございません。
```
$ flutter --version
Flutter 3.16.9 • channel stable •
https://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:x-oauth-basic@github.com/flutte
r/flutter.git
Framework • revision 41456452f2 (6 weeks ago) • 2024-01-25 10:06:23 -0800
Engine • revision f40e976bed
Tools • Dart 3.2.6 • DevTools 2.28.5
```

## 導入方法
自動生成コードはパッケージ扱いなので、 `pubspec.yaml` でインポートしてください。
必要に応じて `open_api` ディレクトリを移動させてください。
インポート例は以下の通りです。この例は `pubspec.yaml` と `open_api` が同じ階層にある想定です。

dio
```yaml
dependencies:
  built_collection: ^5.1.1 # ListBuilder型が出力されるので最初に追加しておくことを推奨します
  openapi:
    path: ./openapi
```

http
```yaml
dependencies:
  openapi:
    path: ./open_api/dist_http
```

## リクエスト時の使用方法
※ あくまでも使用方法の一例です。

dio
```Dart
import 'package:openapi/openapi.dart';
・
・
・
    final APIResponse? result = await ChargerSpotsApi(${Dioのインスタンス}, standardSerializers).chargerSpots(
      ${連携された認証トークン},
      swLat: '35.683331703634124',
      swLng: '139.76968669891357',
      neLat: '35.689331703634124',
      neLng: '139.77568669891357',
    );

・
・
・
```

http
```Dart
import 'package:openapi/api.dart';
・
・
・
    final APIResponse? result = await ChargerSpotsApi(${ApiClientのインスタンス}).chargerSpots(
      ${連携された認証トークン},
      swLat: '35.683331703634124',
      swLng: '139.76968669891357',
      neLat: '35.689331703634124',
      neLng: '139.77568669891357',
    );

・
・
・
```

## モデルクラスについて
各モデルクラスは、 `open_api/dist_{選択したパッケージ}/lib/model` に配置してあります。

## その他
- 生成は [openapi-generator](https://openapi-generator.tech/) で行なっているので、templateファイルを加工することで自動生成の内容を変更することが可能です。
- npmを使用していますが、さまざまな方法で生成が可能です。

# 参考文献
- [OpenAPI x Flutterでプロダクト開発をより早く回そう](https://zenn.dev/team_soda/articles/20d984a8c5d07e)
- [OpenApi Generator公式](https://openapi-generator.tech/docs/installation)
- [FlutterでSwagger(openapi-generator)を使う方法](https://qiita.com/murapon/items/2e0933a054b9555378e2)
