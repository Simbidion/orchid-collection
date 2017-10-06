class Species < ApplicationRecord
  # Make sure that sci name is present and in two parts
  validates :sci_name, presence: true, format: { with: /\w+\s\w+/ }
  
end
