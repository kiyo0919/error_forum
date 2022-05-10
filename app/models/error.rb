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

  def self.search_for(word, learning_phase)
    if  Mentor.find_by(name: word)
      mentor = Mentor.find_by(name: word)
      mentor.supports
    elsif learning_phase == "basic_knowledge"
      Error.where(learning_phase: "basic_knowledge").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "team_development"
      Error.where(learning_phase: "team_development").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "advance_task"
      Error.where(learning_phase: "advance_task").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "advance_learning"
      Error.where(learning_phase: "advance_learning").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "port_folio"
      Error.where(learning_phase: "port_folio").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "ai_culture"
      Error.where(learning_phase: "ai_culture").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "cloud_culture"
      Error.where(learning_phase: "cloud_culture").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "challenge"
      Error.where(learning_phase: "challenge").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "development_skill_up"
      Error.where(learning_phase: "development_skill_up").where("title LIKE ?", "%#{word}%")
    elsif learning_phase == "all_phese" # 全体処理
      Error.where("title LIKE ?", "%#{word}%")
    end
  end
end
