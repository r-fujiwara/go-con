GO コン vol1
===

### What is Go

- Google製
- 手続き型(クラスは無い)
- コンパイル言語
- でもLL感覚で書けるので近年人気を博している

### Why Go

- Docker, Terraform, Drone.io
- 速いけど、Cほど大変じゃない
- Pixiv、Gnosyなどで使ってるっぽい（のでやってみよう）

### Quick Start

- 以下は絶対やりましょう
- やらないと死にます

```
$ brew install go
```

```
$ vim $HOME/.bashrc
```

- 以下を追記(一応以下のPATHにgoが入ってるか確認して下さい)

```
export GOPATH=/usr/local/go/
export PATH=$PATH:/usr/local/go/bin
```

> Golang開発環境 3分クッキング   
http://qiita.com/morisuke/items/ce04479c1b26d83f4fe3


聞かれそうなこと
===


### pry/irbあるんですか？

- 公式では提供してない(しろや)
- [gore(REPL)](https://github.com/motemen/gore)

```
$ go get github.com/motemen/gore
```

- コントローラとかでアクション来た時に途中で止める意味でのpry
- [この辺](https://nekojarashi.qiita.com/r-fujiwara/items/c41ef778f873c8a51f36#%E9%80%94%E4%B8%AD%E3%81%A7%E6%AD%A2%E3%82%81%E3%82%8Bpry%E3%81%A3%E3%81%BD%E3%81%84%E3%82%84%E3%81%A4)見てください

```
$ go get github.com/mailgun/godebug
```

### レールズみたいにサーバ側のコード変えたらリロードしてくれるんですか？

- 現在探してます
- gdbとかで愚直でdebugしかないのかな...

### require, require_relativeあるんですか？

- 多分無い
- 名前空間とかも無いのでは？（あるのかな？）

### 何から始めればいいんだぜ？

- [Tour of Go](http://go-tour-jp.appspot.com/#1)(自分は飽きました)
- [Go by Example](https://gobyexample.com/)(個人的にはこっちのが参考になる)

### リンク集

- [mattn](https://github.com/mattn?tab=repositories)(すごくGo書いてる人)
- [lestrrat](https://github.com/lestrrat?tab=repositories)(すごくGo書いてる人)
  - [この人のpodcast](http://rebuild.fm/42/)(Goの話が聞ける)
- [Gnosyの話](https://speakerdeck.com/ymatsuwitter/howtointroducego)(RailsとGoでリクエストを捌く)
- [Pixivの話](https://speakerdeck.com/catatsuy/p-ads-server-gocon2015)

### 個人的に

- Go布教してプロダクションで使いたいわけじゃないッス
- 一人でやるより定期的に情報共有したりハマりポイント共有したほうがいいかな、と