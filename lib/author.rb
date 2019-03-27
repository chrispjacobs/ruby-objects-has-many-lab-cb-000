class Author
  @posts = []
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def posts
    @posts
  end
  def add_post(post_variable)
    @posts << post_variable
  end
  def add_post_by_title(post_title)
    post_variable = Post.new
    post_variable.title = post_title
    @posts << post_variable
  end
  def post_count
    @posts
  end
end
