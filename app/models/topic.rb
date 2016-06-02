class Topic < ActiveRecord::Base
  has_many :taggings , :class_name => "Tagging", :foreign_key => "topic_id"
end
