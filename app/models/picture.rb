class Picture < ApplicationRecord

  validates :artist,  presence: true

  validates :title, length: {in: 3..20, too_short: "Between 3 and 20 is the number of characters allowed in a title"}
  # validates :title, length: {maximum: 20, too_long: "#{count} is the maximum number of characters allowed in a title"}

  validates :url, presence: true
  validates :url, uniqueness: true

end
