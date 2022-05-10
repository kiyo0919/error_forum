class SearchesController < ApplicationController

  def search
    @learning_phases = Error.learning_phases
    @word = params[:word]
    if params[:learning_phase].present?
      @learning_phase = params[:learning_phase]
      @errors = Error.search_for(@word, @learning_phase)
    else
      @errors = Error.search_for(@word, "all_phese")
    end
  end
end
