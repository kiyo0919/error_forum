class MentorsController < ApplicationController
  before_action :authenticate_mentor!, only: [:show]
  def show
    @mentor = Mentor.find(params[:id])
    @learning_phases = Error.learning_phases
  end

  def edit
    @mentor = Mentor.find(params[:id])
    @learning_phases = Error.learning_phases
  end

  def update
    @mentor = Mentor.find(params[:id])
    
  end
end
