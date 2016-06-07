class Topic < ActiveRecord::Base
  has_many :taggings , :class_name => "Tagging", :foreign_key => "topic_id"
  has_many :tagged_articles, :through => :taggings, :source => :article
end
