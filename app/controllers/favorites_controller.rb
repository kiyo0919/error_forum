class FavoritesController < ApplicationController

  def create
    if mentor_signed_in?
      @error = Error.find(params[:error_id])
      @favorite = current_mentor.favorites.new
      @favorite.error_id = @error.id
      @favorite.save
    else
      flash[:alert] = "高評価する場合はログインしてください"
      redirect_to new_mentor_session_path
    end
  end

  def destroy
    @error = Error.find(params[:error_id])
    @favorite = current_mentor.favorites.find_by(error_id: @error.id)
    @favorite.destroy
  end

end
