class Region < ApplicationRecord
  has_many :tourbases, class_name: 'Tourbase', dependent: :destroy

  validates_presence_of :nearest_city, :country, :country_code
end