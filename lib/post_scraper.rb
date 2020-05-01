  require "open-uri"
  require "nokogiri"

  post_data = {}
  path = "ben/im-ben-and-i-am-a-rails-developer-1j67"
  full_path = "https://dev.to/#{path}"
  # Grab HTML
  html_content = open(full_path).read
  doc = Nokogiri::HTML(html_content)

  post_data[:path] = path
  post_data[:title] = doc.at_css('.medium').text.strip
  post_data[:author] = doc.at_css('.author').text.strip
  post_data[:content] = doc.at_css('.body').text.strip
  # post = doc.at_css('.body').text.strip
  puts post_data
