# pocket model
require "csv"
require_relative "post"

class Pocket
  def initialize(csv_path)
    @posts = []
    @csv_path = csv_path
  end

  def all
    @posts
  end


end
