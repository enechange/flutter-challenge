# OpenAPIから生成したモデル、クライアントの活用方法

HTTPリクエストのクライアントとして、[http](https://pub.dev/packages/http/versions) / [dio](https://pub.dev/packages/dio) を用意しました
`open_api` ディレクトリ配下は以下のような構成になっています。
- definitions: OpenAPIの定義ファイルが配置されています。
- dist_dio: dio用のクライアント、モデルが配置されています
- dist_http: http用のクライアント、モデルが配置されています 
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

## 導入方法
自動生成コードはパッケージ扱いなので、 `pubspec.yaml` でインポートしてください。

1. `open_api` ディレクトリを自身の作成したFlutterプロジェクトのディレクトリに移動してください
2. 自分のFlutterプロジェクトの `pubspec.yaml` に下記のようにインポートしてください

http
```yaml
dependencies:
  openapi:
    path: ./open_api/dist_http
```

dio
```yaml
dependencies:
  built_collection: ^5.1.1 # ListBuilder型が出力されるので最初に追加しておくことを推奨します
  openapi:
    path: ./openapi
```

## リクエスト時の使用方法
※ あくまでも使用方法の一例です。

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

## モデルクラスについて
各モデルクラスは、 `open_api/dist_{選択したパッケージ}/lib/model` に配置してあります。

## その他
- 生成は [openapi-generator](https://openapi-generator.tech/) で行なっているので、templateファイルを加工することで自動生成の内容を変更することが可能です。
- npmを使用していますが、さまざまな方法で生成が可能です。

# 参考文献
- [OpenAPI x Flutterでプロダクト開発をより早く回そう](https://zenn.dev/team_soda/articles/20d984a8c5d07e)
- [OpenApi Generator公式](https://openapi-generator.tech/docs/installation)
- [FlutterでSwagger(openapi-generator)を使う方法](https://qiita.com/murapon/items/2e0933a054b9555378e2)
