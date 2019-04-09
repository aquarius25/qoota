module ApplicationHelper
  def qiita_markdown(markdown)
    processor = Qiita::Markdown::Processor.new(hostname: "example.com")
    processor.call(markdown)[:output].to_s.html_safe
  end

  def shape_create_time(created_at)
    created_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
# 上記の記述本番環境では自分のhostnameを入れる
