class HomesController < ApplicationController
  def top
    @errors = Error.all
  end
end
