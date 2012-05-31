class Micropost < ActiveRecord::Base
  attr_accessible :text

  validates :text, presence: true, length: { maximum: 140}

end
