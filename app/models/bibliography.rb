class Bibliography < ActiveRecord::Base
  belongs_to :article , :class_name => "Article", :foreign_key => "article_id"
  belongs_to :author , :class_name => "Author", :foreign_key => "author_id"
end
