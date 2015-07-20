module PagesHelper
    def convert_post(post)
        renderer = Redcarpet::Render::HTML.new(filter_html:true)
        markdown = Redcarpet::Markdown.new(renderer, autolink: true)
        post = markdown.render(post).html_safe
        
    end
end
