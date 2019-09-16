require "json"

class QiitaApi
  def get_items(params)
    url = 'https://qiita.com'
    connection = Faraday.new(url: url)
    query = if params == {}
              'tag:Rails updated:>2019-02 stocks:>3'
            else
              'tag:' + params[:tag] + ' updated:>' + params[:update_at] + ' stocks:>' + params[:stocks]
            end
    response = connection.get do |req|
      req.url '/api/v2/items', page: 1, per_page: 100, query: query
    end
    json = JSON.parse(response.body)
    json.sort_by { |i| i['likes_count']}.reverse.map do |item|
      { title: item['title'], url: item['url'], likes_count: item['likes_count'] }
    end.take(20)
  end
end