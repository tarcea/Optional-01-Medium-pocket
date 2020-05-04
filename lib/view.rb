# require 'pry'
class View
  def show(array)
    array.each_with_index do |post, index|
      check_box = post.is_read ? '[X]' : '[ ]'
      puts "#{check_box}.#{index + 1}. #{post.title}"
      puts "by #{post.author}"
      puts post.content
      # binding.pry
    end
  end
end
