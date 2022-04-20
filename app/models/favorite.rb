class Favorite < ApplicationRecord
  belongs_to :error
  belongs_to :mentor, optional: true
end
