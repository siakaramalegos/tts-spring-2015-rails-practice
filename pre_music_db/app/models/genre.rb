class Genre < ActiveRecord::Base
  has_many :artists

  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
end
