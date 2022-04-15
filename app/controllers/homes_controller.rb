class HomesController < ApplicationController
  def top
    @errors = Error.all
  end

  def about
    
  end
end
