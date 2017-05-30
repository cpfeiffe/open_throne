class Comment < ApplicationRecord

  belongs_to :user
  has_many :photos, :dependent => :destroy
  belongs_to :restroom
  
end
