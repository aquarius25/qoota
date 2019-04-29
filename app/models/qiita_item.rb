require "json"
class QiitaItem < ApplicationRecord
  def self.get
    url = 'https://qiita.com'
    connection = Faraday.new(url: url) # （1）faradayの初期化
    response = connection.get do |req| # （2）getリクエスト
      req.url '/api/v2/items',
      page: 1,
      per_page: 100,
      query: 'tag:Rails updated:>2019-02 stocks:>3' # （3）GETリクエストを送るURIを「/api/v2/items」に指定
    end

    json = JSON.parse(response.body) # （4）QiitaのAPIから返ってきたJSONをパースしている
    json.sort_by { |i| i['created_at']}.reverse.map do |item| # （5）記事を一旦create_atの降順でソートして記事タイトル／URL／いいね数のハッシュ形式にしたものを新しい配列をmapメソッドで生成しています。最後のtake(20)は、いいね数の上位20件を取得している
      { title: item['title'], url: item['url'], likes_count: item['likes_count'] }
    end.take(100)
  end
end
