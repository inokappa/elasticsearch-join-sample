# elasticsearch-join-sample

## これは

Elasticsearch の join datatype とhas\_child, has\_parent クエリを試した際に利用した各種ファイル.

* http://inokara.hateblo.jp/entry/2018/05/13/182331

## ファイル

```sh
$ tree .
.
├── README.md
├── docker
│   └── elasticsearch
├── docker-compose.yml
├── elasticsearch
│   ├── haiku1.json
│   └── haiku2.json
└── mysql
    └── haiku.sql

3 directories, 6 files
```

haiku1.json と haiku2.json は, Elasticsearch クエリが含まれている. haiku.sql は, Elasticsearch で行った内容を MySQL で行う際に利用した SQL クエリが含まれている.

## Elasticsearch と kibana

docker-compose.yml を利用して起動する.

```sh
$ docker-compose up -d
```
