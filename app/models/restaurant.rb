class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  def self.category
    ["CHINESE", "ITALIAN", "JAPANESE", "FRENCH", "BELGIAN", "INDIAN"]
  end

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: self.category}
end
