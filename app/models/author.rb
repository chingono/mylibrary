class Author < ActiveRecord::Base
  has_many :bibliographies , :class_name => "Bibliography", :foreign_key => "author_id"
end
