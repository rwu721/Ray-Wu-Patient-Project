class Micropost < ActiveRecord::Base
belongs_to :user, foreign_key: "user_id"

  attr_accessible :text, :user

  validates :text, presence: true, length: { maximum: 140}

end
