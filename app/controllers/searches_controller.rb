class SearchesController < ApplicationController

  def search
    @learning_phases = Error.learning_phases
    @word = params[:word]
    @learning_phase = params[:learning_phase]
    @errors = Error.searh_for(@word, @learning_phase)
  end
end
