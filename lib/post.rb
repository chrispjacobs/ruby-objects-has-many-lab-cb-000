class Post
  @@all = []
  @author = nil
  attr_accessor :title
  def initialize(title)
    @title = title
    @all << self
  end
  def author=(author_variable)
    @author = author_variable
  end
  def author_name
    @author
  end
end
