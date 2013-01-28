class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  attr_accessible :body, :user_id
  
  validates :body, :presence => true,
                       :length => { :minimum => 5 }
end
