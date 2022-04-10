class Error < ApplicationRecord
  has_one_attached :image
  belongs_to :used_technology

  with_options presence: true do
    validates :title
    validates :learning_phase
    validates :used_technology
    validates :detail
    validates :solution
  end
  enum learning_phase: { basic_knowledge: 0, team_development: 1, advance_task: 2, advance_learning: 3,
    port_folio: 4, ai_culture: 5, cloud_culture: 6, challenge: 7, development_skill_up: 8 }

end
