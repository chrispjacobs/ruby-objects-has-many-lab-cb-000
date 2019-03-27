class Author
    attr_accessor :name
    def initialize(name)
      @name = name
      @posts = []
    end
    def posts
      @posts
    end
    def add_post(post_variable)
      @posts << post_variable
      post_variable.author = self
    end
    def add_post_by_title(post_title)
      post_variable = Post.new(post_title)
      @posts << post_variable
    end
    def posts
        @posts
    end
    def post_count
      @posts.count
    end
  end
