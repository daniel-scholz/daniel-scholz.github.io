# Keeps _site to what the pages load. `exclude:` can't drop theme-gem files, and
# jekyll-feed (pulled in by the theme) has no off switch, so prune before writing.
Jekyll::Hooks.register :site, :pre_render do |site|
  unused = ->(url) { url.start_with?("/assets/js/") && url != "/assets/js/main.min.js" }
  site.static_files.reject! { |file| unused.call(file.url) }
  site.pages.reject! { |page| unused.call(page.url) || page.url == "/feed.xml" }
end
