class Post < ActiveRecord::Base
  translates :title, :text
  validates_presence_of :title, :text
end