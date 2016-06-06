class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :likes , :class_name => "Like", :foreign_key => "user_id"
  has_many :lists , :class_name => "List", :foreign_key => "user_id"
  has_many :listed_articles, :through => :lists, :source => :article
  has_many :liked_articles, :through => :likes, :source => :article
end
