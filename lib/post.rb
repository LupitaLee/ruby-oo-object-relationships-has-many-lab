class Post

    attr_accessor :title, :author
    @@all = []
    def initialize(title)
        @title = title
        @author = author
        @@all << self 
    end
    
    def self.all
        @@all
    end

    def author_name
    if self.author
         return self.author.name
    else
    return nil
    end
end
end

