class Author

attr_accessor :name
@@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end
    def self.all
        @@all
    end

    def posts
    Post.all.select {|post| post.author == self}
    end
    
    def add_post(post)
        
       post.author = self
       self.posts << post
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        total_count = 0
        @@all.each do |author|
        total_count += author.posts.count
        end
        total_count
    end
end