class Artist < ActiveRecord::Base
  belongs_to :genre
  has_many :songs

  validates :name, presence: true, length: {minimum: 2}, uniqueness: true
  validates :genre_id, presence: true

  # Creating a recent scope that gives items created within the last indicated minutes.
  # The lamda will freshly run every time the scope is called.
  # Must exit and re-enter Rails console each time this file is updated.
  scope :recent, -> (minutes_past=60) {where("created_at > ?", minutes_past.minutes.ago)}
  scope :today, -> { where('DATE(created_at) = ?', Date.today)}
end
