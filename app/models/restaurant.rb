class Restaurant < ApplicationRecord
    has_many :foods
    has_many :line_foods, through: :foods
  
    DEFAULT_NAME_LENGTH = 30

    validates :name, :fee, :time_required, presence: true
    validates :name, length: { maximum: DEFAULT_NAME_LENGTH }
    validates :fee, numericality: { greater_than: 0 }
end