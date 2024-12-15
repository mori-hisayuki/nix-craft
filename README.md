# Nix Development Environments

このリポジトリは、Nixを使用した開発環境の設定を管理します。

## 構造

- `environments/`: 各開発環境の個別設定
- `shells/`: 共通のシェル環境設定

## 共通開発環境（shells/）

基本的な開発ツールを含む共通環境を提供します。

### 含まれるツール

- git: バージョン管理システム
- docker: コンテナ管理ツール

### 使用方法

1. shellsディレクトリに移動：
```bash
cd shells
```

1. Nix環境を起動：
```
nix-shell
```
