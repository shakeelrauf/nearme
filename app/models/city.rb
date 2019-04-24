class City < ApplicationRecord
  belongs_to :state
  validates :name, uniqueness: true
  validates_presence_of :name
end
