module UrlHelper
  def link_to(text, url, html_options={})
    attributes = html_options.map{|k,v| "#{k}=\"#{v}\""  }.join(' ')
    attributes = " #{attributes}" unless attributes.empty?
    "<a href=\"#{url}\"#{attributes}>#{text}</a>"
  end
end
