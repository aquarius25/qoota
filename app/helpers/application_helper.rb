module ApplicationHelper
    require "redcarpet"
    require "coderay"

    class HTMLwithCoderay < Redcarpet::Render::HTML
        def block_code(code, language)
            language = language.split(':')[0]

            case language.to_s
            when 'rb'
                lang = 'ruby'
            when 'yml'
                lang = 'yaml'
            when 'css'
                lang = 'css'
            when 'html'
                lang = 'html'
            when ''
                lang = 'md'
            else
                lang = language
            end

            CodeRay.scan(code, lang).div
        end
    end

  def shape_create_time(created_at)
    created_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
