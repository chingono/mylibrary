class List < ActiveRecord::Base
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  belongs_to :article , :class_name => "Article", :foreign_key => "article_id"

  validates :user, :presence => true
  validates :user, :presence => true
  
end
