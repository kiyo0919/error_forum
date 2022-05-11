class HomesController < ApplicationController
  def top
    @errors = Error.all
    @learning_phases = Error.learning_phases
  end

  def about
    @learning_phases = Error.learning_phases
  end
end
