class Tagging < ActiveRecord::Base
  belongs_to :topic , :class_name => "Topic", :foreign_key => "topic_id"
  belongs_to :article , :class_name => "Article", :foreign_key => "article_id"
end
