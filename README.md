# macOSのお手軽セットアップ

## 事前準備
- Apple Store に Apple ID でログインしておく
- [Homebrew](https://brew.sh/index_ja) をインストール

## Brewfile でアプリケーションをまとめてインストールする

Homebrew bundlerのインストール
```
brew tap Homebrew/bundle
```

Brewfileを `~/.Brewfile` にコピーして以下を実行

```
brew bundle --file  ~/.Brewfile
```

## バックアップしていた `.ssh` `.zshrc` `.gitconfig` などをユーザーローカルにシンボリックリンクとして貼る
### 前提
- Dropboxにバックアップ用ディレクトリを用意している。
  - 私の場合は `~/Dropbox/_backup` を用意している
  - その中に `.zshrc` `.gitconfig` ファイルと `.ssh` ディレクトリが入っている

### 実行

プログラム内の `backup_file_path` を自分の バックアップ用のファイルディレクトリへのパスに書き換える

link.shをバックアップディレクトリ用のディレクトリ内にコピーして以下を実行

```
sudo ~/Dropbox/_backup/link.sh
```

## その他
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) のインストール
- [Logicool Options](https://www.logicool.co.jp/ja-jp/product/options) のインストール
- [アドビクリエイティブクラウド](https://creativecloud.adobe.com/) のインストール
