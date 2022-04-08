class Error < ApplicationRecord
  has_one_attached :image

  enum learning_phase: { basic_knowledge: 0, team_development: 1, advance_task: 2, advance_learning: 3,
                    port_folio: 4, ai_culture: 5, cloud_culture: 6, challenge: 7, development_skill_up: 8 }
end
