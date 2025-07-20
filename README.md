# Docker-in-Claude-Code

アプリケーション開発用のDockerイメージをベースとして、Claude Code が利用できる汎用的なDockerfileを提供

## 概要

既存のアプリケーション開発環境（Node.jsなど）に Claude Code を追加し、MCPサーバーをDocker-in-Docker経由で実行できる環境を構築します。

## 利用方法

### 1. ビルド

```bash
docker compose build
```

### 2. 実行

```bash
docker compose run --rm www-claude-code
```

## 構成

- **www**: アプリケーション開発用ベースイメージ（Node.js 24.4）
- **claude.Dockerfile**: 任意のベースイメージにClaude Codeを追加する汎用Dockerfile
- **dind**: MCPサーバー実行用のDocker-in-Docker環境

`claude.Dockerfile`は`BASE_IMAGE`引数でベースイメージを指定でき、様々な開発環境でClaude Codeを利用できます。

