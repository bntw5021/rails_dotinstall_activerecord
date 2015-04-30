require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./blog.db"
)

class Post < ActiveRecord::Base
    validates :title, :presence => true
    validates :body, :length => { :minimum => 5 }
end

post = Post.new(:body => "123")

if !post.save
    p post.errors.messages
end

p Post.all

