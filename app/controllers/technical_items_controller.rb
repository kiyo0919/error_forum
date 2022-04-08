class TechnicalItemsController < ApplicationController

  def new
    @technical_item = TechnicalItem.new
    @technical_items = TechnicalItem.all
  end

  def create
    @technical_item = TechnicalItem.new(technical_item_params)
    if @technical_item.save
      flash[:notice] = "技術項目を追加しました"
      redirect_to new_technical_item_path
    else
      render :new
    end
  end

  def destroy
    technical_item = TechnicalItem.find(params[:id])
    technical_item.destroy
    flash[:notice] = "技術項目[#{technical_item.name}]を削除しました"
    redirect_to new_technical_item_path
  end

   private

   def technical_item_params
    params.require(:technical_item).permit(:name)
   end
end
