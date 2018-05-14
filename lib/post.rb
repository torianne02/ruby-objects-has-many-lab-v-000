class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author
    self.author.name if self.author != nil
  end
end
