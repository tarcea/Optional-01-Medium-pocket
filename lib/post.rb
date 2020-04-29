class Post
  attr_reader :path, :title, :author, :content, :is_read
  def initialize(post_data)
    @path = post_data[:path]
    @title = post_data[:title]
    @author = post_data[:author]
    @content = post_data[:content]
    @is_read = post_data[:is_read]
  end
end
