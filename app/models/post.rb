class Post < ActiveRecord::Base
	
  attr_accessible :content, :title, :picture, :user_id
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_many :comments
  belongs_to :user

  validates :title, :presence => true
  validates :content, :presence => true,
                       :length => { :minimum => 5 }
end
