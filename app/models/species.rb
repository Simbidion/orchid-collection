class Species < ApplicationRecord
  validates :sci_name, presence: true, format: { with: /\w+\s\w+/ }
  
end
