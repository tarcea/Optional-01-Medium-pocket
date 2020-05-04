require 'pry'
class Controller
  def initialize(pocket)
    @pocket = pocket
  end

  def scraper(path)
      require 'open-uri'
      require 'nokogiri'

      post_data = {}
      # path = "ben/im-ben-and-i-am-a-rails-developer-1j67"
      full_path = "https://dev.to/#{path}"
      # Grab HTML
      html_content = open(full_path).read
      doc = Nokogiri::HTML(html_content)

      post_data[:path] = path
      post_data[:title] = doc.at_css('.medium').text.strip
      post_data[:author] = doc.at_css('.author').text.strip
      post_data[:content] = doc.at_css('.body').text.strip
      # post = doc.at_css('.body').text.strip
      post_data
  end

  def list
    puts "1. List posts"
  end

  def add
    puts "2. Save post for later"
    path = gets.chomp
    datas = scraper(path)
    post = Post.new(datas)
    @pocket.create(post)
  end

  def read
    puts "3. Read post"
  end

  def mark
    puts "4. Mark post as read"
  end
end

