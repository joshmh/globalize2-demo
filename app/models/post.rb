class Post < ActiveRecord::Base
  translates :title, :text
end