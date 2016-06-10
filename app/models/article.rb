class Article < ActiveRecord::Base
  has_many :bibliographies , :class_name => "Bibliography", :foreign_key => "article_id"
  has_many :lists , :class_name => "List", :foreign_key => "article_id"
  has_many :taggings , :class_name => "Tagging", :foreign_key => "article_id"
  has_many :likes , :class_name => "Like", :foreign_key => "article_id"
  belongs_to :category , :class_name => "Category", :foreign_key => "category_id"
  has_many :topics, :through => :taggings
  has_many :authors, :through => :bibliographies

  validates :link, :presence => true, :uniqueness => true
  validates :title, :presence => true, :uniqueness => true

end
