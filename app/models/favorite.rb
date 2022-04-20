class Favorite < ApplicationRecord
  belongs_to :error
  belongs_to :mentor, optional: true
  validates_uniqueness_of :error_id, scope: :mentor_id
end
