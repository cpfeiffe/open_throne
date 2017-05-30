class Restroom < ApplicationRecord

  has_many :comments, :dependent => :destroy

end
