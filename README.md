
# 要約をしてくれるWebサービスをDocker化

Web要約 APIを捜していて、みつけた[summpy](https://github.com/recruit-tech/summpy)をDockerコンテナ上で動くようにした。

捜していたのは、URLを入力すると、そのWebの要約を出してくれる物だったの
で、入力がURLでなくてtext入力なのが残念だけど、テキスト要約APIとしては
良さそう。

## オリジナル

https://github.com/recruit-tech/summpy

##  サンプル
* sent_limit で 箇条書き難行にするか
* text に本文を入れる

http://summpy.example.com:8080/summarize?sent_limit=2&text=%E4%BB%8A%E6%97%A5%E3%81%AF%E8%89%AF%E3%81%84%E5%A4%A9%E6%B0%97%E3%81%A7%E3%81%99%E3%80%82%E3%81%97%E3%81%8B%E3%81%97%E3%80%81%E6%98%8E%E6%97%A5%E3%81%AF%E9%9B%A8%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%A7%E3%81%97%E3%82%87%E3%81%86%E3%80%82%E6%98%8E%E6%97%A5%E3%81%AE%E9%9B%A8%E3%81%AF%E5%AF%92%E3%81%84%E3%81%A7%E3%81%99%E3%80%82


