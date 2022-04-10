class UsedTechnologiesController < ApplicationController
  def new
    @used_technology = TechnicalItem.new
    @used_technologies = TechnicalItem.all
  end

  def create
    @used_technology = TechnicalItem.new(used_technology_params)
    if @used_technology.save
      flash[:notice] = "技術項目を追加しました"
      redirect_to new_error_path
    else
      render :new
    end
  end

  def destroy
    used_technology = TechnicalItem.find(params[:id])
    used_technology.destroy
    flash[:notice] = "技術項目[#{@used_technology.name}]を削除しました"
    redirect_to root_path
  end

   private

   def used_technology_params
    params.require(:used_technology).permit(:name)
   end
end
