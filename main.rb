require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./blog.db"
)

class Post < ActiveRecord::Base
end

# delete; record fast
# destroy: object slow

#Post.where(:id => 1..2).delete_all
Post.find(3).destroy

p Post.all
