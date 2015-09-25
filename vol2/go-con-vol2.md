GoコンVol2
===


前回のおさらい
===


### 20代の主張

- 俺「絶対にコード修正する度にサーバ再起動したくないでござる！絶対にしたくないでござる！」
- 俺「binding.pryしたいでござる！printfデバッグとか愚の骨頂でござる！」

### 30代の主張

- 「binding.pry？無理だ諦めろ」
- 「静的言語はコンパイルして速度稼いでるんだ」
- 「戦時中はイモしか無かったんだ」

### 色々調べた結果

- 多分コマンドラインツール系は[godebug](https://github.com/mailgun/godebug)でOK
   
- サーバ系はlogger, Makefile(サーバ再起動を自動化する), gdb(pryっぽいポジション)あたりで頑張るのがOK。

- それか `godebug`とMakefileで頑張る
   
- この前 ` @n-nishizawa ` さんが「カーネルのデバッグとかもgdbでやるんや」みたいなこと言ってたし覚えたほうが良さそうだな...
   
進捗
===

### ビルド/パッケージング/名前空間とか

- [hiromi-go](https://github.com/r-fujiwara/hiromi-go)を読んで何となく雰囲気を感じて欲しい
- ただ、[ここ](https://github.com/haruyama/golang-goji-sample/blob/master/server.go#L10-L11)が気になった。public repoじゃないと死んでしまうのでは？
- 実際違うので説明します

GO_PATHについて
===

### GO_PATHって何？

- githubとかから落としてきてbinとかsrcとかが入っている
- **どこに指定したもOK**
- 自分は開発中のリポジトリと入れてきたライブラリとかを全部同梱してます

### Makefileでリロード

- freshとか使うと色々と分けわかんなそうだから、MakefileとかでReloadしてgdbでやる作戦
- [sample](https://github.com/r-fujiwara/goji-sample-for-makefile)

```
$ go get github.com/codeskyblue/fswatch
$ git clone git@github.com:r-fujiwara/goji-sample-for-makefile.git
$ cd goji-sample-for-makefile
$ make serve
```

gdb
===

### gdb 教えて下さい！(1/2)
```
$ git clone git@github.com:r-fujiwara/hiromi-go.git
$ cd path/to/hiromi-go.git
$ go build -gcflags "-N -l" hiromi.go
$ gdb hiromi
```

### gdb 教えて下さい！（2/2）

- 何か他に覚えておけ的なオプションあります？

```
$ gdb hiromi

(gdb) b hiromiorigin.go:9
(gdb) run
(gdb) p a
$1 = {
  str = 0x4db6b0 "initial",
  len = 7
}
```