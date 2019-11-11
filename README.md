# nimで簡易的なSocketプログラム

## サーバの起動

```
nim c -r server.nim
```

## クライアントの起動

サーバ起動後、別CMD（or terminal）で、

```
nim c -r client.nim
```

サーバに「やっほ」が表示されてプログラムが終了する。
