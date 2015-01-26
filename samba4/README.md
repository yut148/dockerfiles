# Samba
Sambaサーバーを提供します。

データの永続化は[samba-data](https://github.com/MATSUMOTO-Takashi/dockerfiles/tree/master/samba-data "samba-data")コンテナを使用します。

また作成したユーザー・グループ情報は停止時にファイルごとバックアップします。

# 事前準備
`files/smb.conf`を自身の環境用に編集してください。

# コンテナ起動
ビルドしてコンテナを起動します。

ビルド時に`files/smb.conf`をコピーします。

```
$ sudo ./build.sh
$ sudo ./startup.sh
```

# コンテナ破棄
破棄時にユーザー情報等のバックアップを行います。

```
$ sudo ./shutdown.sh
```

# 接続
稼働中のSambaコンテナに接続。

```
$ sudo ./bash.sh
```

# ユーザー追加
Sambaへ接続するユーザーは`bash.sh`を利用してコンテナ内で直接操作をしてください。
