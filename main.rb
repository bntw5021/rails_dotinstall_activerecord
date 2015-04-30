require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./blog.db"
)

class Post < ActiveRecord::Base
end

post = Post.find(1)

=begin
post.title = "(new)title1"
post.save
=end

#post.update_attribute(:title, "(new2)title1")
#post.update_attributes(:title => "nnn", :body => "hhh")

Post.where(:id => 1..2).update_all(:title => "nnn2", :body => "hhh2")

p Post.all
