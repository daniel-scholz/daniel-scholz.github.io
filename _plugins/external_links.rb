# Opens links to other sites in a new tab, wherever the link comes from (templates, data, Markdown).
Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.output_ext == ".html"

  own = doc.site.config["url"]
  doc.output = doc.output.gsub(/<a\s[^>]*>/) do |tag|
    href = tag[/\shref="([^"]*)"/, 1]
    next tag if href.nil? || !href.match?(%r{\Ahttps?://}) || href.start_with?(own)
    next tag if tag.include?("target=")

    tag.sub(/\A<a/, '<a target="_blank"')
  end
end
