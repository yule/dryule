module BlogHelper
  def parse_content(content)
    html = content.gsub('&gt;', '>').gsub('&lt;', '<')      
    h html.html_safe
  end

end
