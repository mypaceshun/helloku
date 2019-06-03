# Helloku

HerokuとDjangoを使ってみたかったので
HelloWorld!的なリポジトリ

# Require

* Python-3.6.0
* pipenv 2018.11.26

# メモ

## 開発準備

* 依存ライブラリの一括インストール

``` console
$ pipenv sync
```

pipenvって便利だね！

### Heroku周り

* Herokuに新規アカウント登録

* Heroku CLIを入手

``` console
$ sudo snap install --classic heroku
```

* ログイン

``` console
$ heroku login
```

* Herokuアプリケーションの作成

アプリケーションのトップとなるディレクトリに移動し、以下のコマンドを実施

``` console
$ heroku create
```

## runtime.txt

Pythonのバージョン指定

## Procfile

Herokuプロセスの起動コマンド

## Pipfile.lock

依存パッケージのリスト
