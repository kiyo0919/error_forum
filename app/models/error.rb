class Error < ApplicationRecord
  has_one_attached :image
  belongs_to :used_technology
  has_many :error_comments, dependent: :destroy
  belongs_to :mentor
  has_many :favorites, dependent: :destroy

  has_many_attached :images

  with_options presence: true do
    validates :title
    validates :learning_phase
    validates :used_technology
    validates :detail
    validates :solution
  end

  enum learning_phase: { basic_knowledge: 0, team_development: 1, advance_task: 2, advance_learning: 3,
    port_folio: 4, ai_culture: 5, cloud_culture: 6, challenge: 7, development_skill_up: 8 }

  def favorited_by?(mentor)
    favorites.where(mentor_id: mentor.id).exists?
  end

  def searh_for(word, learning_phase)
    if learning_phase == "basic_knowledge"
    elsif learning_phase == "team_development"
    elsif learning_phase == "advance_task"
    elsif learning_phase == "advance_learning"
    elsif learning_phase == "port_folio"
    elsif learning_phase == "ai_culture"
    elsif learning_phase == "cloud_culture"
    elsif learning_phase == "challenge"
    elsif learning_phase == "development_skill_up"
    else
      #全体検索処理
    end
  end
end
