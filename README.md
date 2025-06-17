# Simple Go Web Server

シンプルなGoウェブサーバーのサンプルプロジェクトです。基本的なHTTPハンドラーとDockerサポートを含んでいます。

## 概要

このプロジェクトは以下の機能を提供します：
- シンプルなHTTPウェブサーバー
- 基本的なルーティング（ホームページとアバウトページ）
- Dockerによるコンテナ化サポート
- Docker ComposeによるMySQLデータベース連携

## ファイル構成

- `main.go` - メインのWebサーバーコード
- `go.mod` - Goモジュール定義
- `Dockerfile` - マルチステージDockerビルド設定
- `docker-compose.yml` - MySQLデータベース付きDocker Compose設定
- `CLAUDE.md` - Claude Code用のプロジェクト説明書

## 利用方法

### ローカル実行

```bash
# サーバー起動
go run main.go

# バイナリをビルドして実行
go build -o server main.go
./server
```

サーバーはポート8080で起動します：
- http://localhost:8080/ - ホームページ
- http://localhost:8080/about - アバウトページ

### Docker実行

```bash
# Dockerイメージをビルド
docker build -t simple-server .

# Docker Composeで起動（MySQLデータベース付き）
docker-compose up

# バックグラウンドで起動
docker-compose up -d

# サービス停止
docker-compose down
```

## 技術仕様

- Go 1.21+
- 標準ライブラリ (`net/http`) のみ使用
- Alpine Linuxベースのマルチステージビルド
- MySQL 8.0データベース（Docker Compose使用時）

## 開発について

このプロジェクトは[Claude Code](https://claude.ai/code)を活用して開発されました。Claude Codeは、AIアシスタントによるコード生成、リファクタリング、プロジェクト構築を支援するツールです。

## ライセンス

MIT License