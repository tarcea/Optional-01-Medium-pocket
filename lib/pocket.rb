# pocket model
require "csv"
require_relative "post"

class Pocket
  def initialize(csv_path)
    @posts = []
    @csv_path = csv_path
    csv_load
  end

  def all
    @posts
  end

  def create(post)
    @posts << post
    csv_save
  end

  def csv_load
    CSV.foreach(@csv_path) do |row|
      post_data = {
        path: row[0],
        title: row[1],
        author: row[2],
        content: row[3],
        is_read: row[4] == 'true'
      }
      @posts << Post.new(post_data)
    end
  end

  def csv_save
    CSV.open(@csv_path, "wb") do |csv|
      @posts.each do |post_data|
        csv << [post_data.path,
                post_data.title,
                post_data.author,
                post_data.content,
                post_data.is_read]
      end
    end
  end
end
