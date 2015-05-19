class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true, length: {minimum: 3}
  validates :artist_id, presence: true
  validates_uniqueness_of :name, :scope => :artist_id

  # Creating a recent scope that gives items created within the last indicated minutes
  # Must exit and re-enter console if you make changes to this file!
  scope :recent, -> (minutes_past=60) {where("created_at > ?", minutes_past.minutes.ago)}
  scope :today, -> {where('DATE(created_at) = ?', Date.today)}

  # scope :published, -> { where(published: true)}

  # You can also validate multiple fields at one time, like so:
  # validates :course, :description, :honors, :credit, presence: true

  # validates :terms_of_service, acceptance: true

  # validates :card_number, presence: true, if: :paid_with_card
  # def paid_with_card
  #   payment_type == 'card'
  # end
end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
