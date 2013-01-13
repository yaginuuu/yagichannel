class Post < ActiveRecord::Base
	
  attr_accessible :content, :title, :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_many :comments
  
  validates :title, :presence => true
  validates :content, :presence => true,
                       :length => { :minimum => 5 }
end
