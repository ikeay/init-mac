# macOSのお手軽セットアップ

## 事前準備
- Apple Store に Apple ID でログインしておく
- [Homebrew](https://brew.sh/index_ja) をインストール

## Brewfile でアプリケーションをまとめてインストールする

Homebrew bundlerのインストール
```
brew tap Homebrew/bundle
```

Brewfileを `~/.Brewfile` にコピーして以下をrun

```
brew bundle --file  ~/.Brewfile
```

## バックアップしていた `.ssh` `.zshrc` `.gitconfig` などをユーザーローカルにシンボリックリンクを貼る
### 前提
- Dropboxにバックアップ用ディレクトリを用意している。
  - 私の場合は `~/Dropbox/_backup` を用意している
  - その中に `.zshrc` `.gitconfig` ファイルと `.ssh` ディレクトリが入っている

### 実行
```
sudo ~/Dropbox/_backup/link.sh
```
