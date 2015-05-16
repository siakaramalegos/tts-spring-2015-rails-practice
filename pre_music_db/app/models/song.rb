class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true, length: {minimum: 3}
  validates :artist_id, presence: true
  validates_uniqueness_of :name, :scope => :artist_id
end
