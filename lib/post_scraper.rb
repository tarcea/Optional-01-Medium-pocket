  require "open-uri"
  require "nokogiri"

  post_data = {}
  path = "swlh/you-should-learn-to-code-7e8523a583dc"
  full_path = "https://medium.com/#{path}"
  # Grab HTML
  html_content = open(full_path).read
  doc = Nokogiri::HTML(html_content)

  # post_data[:path] = path
  # post_data[:title] = doc.at_css('#e708').text.strip
  # post_data[:title] = doc.at_css('.ei').text.strip
  # post_data[:author] = doc.at_css('.es').child.text.strip
  post = doc.at_css('.ks')
  puts post
