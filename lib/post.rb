require 'pry'
class Post
   attr_accessor :author, :title

   @@all = [] 
    def self.all
      @@all
    end

    def initialize(title)
      @title = title 
      self.class.all << self
    end 

    def author_name 
      @@all.find do |post|
        if post.author == nil
            return nil
        elsif post.author.name == self.author.name
            return post.author.name    
        end
      end  
    end






end