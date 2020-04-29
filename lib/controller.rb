class Controller
  def intialize(pocket)
    @pocket = pocket
  end

  def list
    puts "1. List posts"
  end

  def add
    puts "2. Save post for later"
  end

  def read
    puts "3. Read post"
  end

  def mark
    puts "4. Mark post as read"
  end
end

