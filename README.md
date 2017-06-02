
# 要約をしてくれるWebサービスをDocker化

Web要約 APIを捜していて、みつけた[summpy](https://github.com/recruit-tech/summpy)をDockerコンテナ上で動くようにした。

捜していたのは、URLを入力すると、そのWebの要約を出してくれる物だったの
で、入力がURLでなくてtext入力なのが残念だけど、テキスト要約APIとしては
良さそう。

## オリジナル

summpy:               https://github.com/recruit-tech/summpy
summpy python3対応版: https://github.com/boarnasia/summpy

##  サンプル
* text :本文
* sent_limit :何行の箇条書きにするか
* algo :アルゴリズム(オプション)
  + `lexrank`: LexRank, a graph-based summarization (default)
  + `clexrank`: Continuous LexRank
  + `divrank`: (experimental) DivRank (Diverse Rank, graph-based method).
  + `mcp`: ILP-based method. Extracts sentences in terms of Maximum Coverage Problem.
* `sent_limit`: センテンス数 ({lex,clex,div}rankの時のみ)
* `char_limit`: 文字数
* `imp_require`: 累積スコア \[0.0-1.0\] ({lex,clex,div}rankの時のみ)

http://summpy.example.com:8080/?sent_limit=2&text=%E4%BB%8A%E6%97%A5%E3%81%AF%E8%89%AF%E3%81%84%E5%A4%A9%E6%B0%97%E3%81%A7%E3%81%99%E3%80%82%E3%81%97%E3%81%8B%E3%81%97%E3%80%81%E6%98%8E%E6%97%A5%E3%81%AF%E9%9B%A8%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%A7%E3%81%97%E3%82%87%E3%81%86%E3%80%82%E6%98%8E%E6%97%A5%E3%81%AE%E9%9B%A8%E3%81%AF%E5%AF%92%E3%81%84%E3%81%A7%E3%81%99%E3%80%82

http://summpy.example.com:8080/?sent_limit\=3\&text\=%E7%AA%81%E7%84%B6%E3%81%A7%E3%81%99%E3%81%8C%E3%80%81%E3%83%AA%E3%82%AF%E3%83%AB%E3%83%BC%E3%83%88%E3%81%AE%E3%83%AA%E3%83%9C%E3%83%B3%E3%83%A2%E3%83%87%E3%83%AB%E3%82%92%E8%80%B3%E3%81%AB%E3%81%97%E3%81%9F%E3%81%93%E3%81%A8%E3%81%AF%E3%81%82%E3%82%8B%E3%81%A7%E3%81%97%E3%82%87%E3%81%86%E3%81%8B%EF%BC%9F%E3%83%AA%E3%83%9C%E3%83%B3%E3%83%A2%E3%83%87%E3%83%AB%E3%81%AF2003%E5%B9%B4%E9%A0%83%E3%81%AB%E5%BD%93%E6%99%82%E3%81%AF%E6%83%85%E5%A0%B1%E8%AA%8C%E3%82%84%E3%83%95%E3%83%AA%E3%83%BC%E3%83%9A%E3%83%BC%E3%83%91%E3%83%BC%E3%82%92%E4%B8%BB%E4%BD%93%E3%81%A8%E3%81%97%E3%81%9F%E3%83%A1%E3%83%87%E3%82%A3%E3%82%A2%E3%82%84%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E3%82%92%E6%A7%8B%E7%AF%89%E3%83%BB%E5%AE%9F%E7%8F%BE%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AE%E5%9F%BA%E6%9C%AC%E6%A7%8B%E6%83%B3%E3%81%A8%E3%81%97%E3%81%A6%E8%AA%95%E7%94%9F%E3%81%97%E3%80%81%E3%83%8D%E3%83%83%E3%83%88%E3%83%A2%E3%83%87%E3%83%AB%E3%81%B8%E3%81%AE%E3%83%88%E3%83%A9%E3%83%B3%E3%82%B9%E3%83%95%E3%82%A9%E3%83%A1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E9%80%9A%E3%81%98%E3%81%A6%E3%81%9D%E3%81%AE%E5%BE%8C%E3%80%81%E3%83%AA%E3%82%AF%E3%83%AB%E3%83%BC%E3%83%88%E5%86%85%E3%81%A7%E5%BA%83%E3%81%BE%E3%81%A3%E3%81%A6%E3%81%84%E3%81%8D%E3%81%BE%E3%81%97%E3%81%9F%E3%80%82
