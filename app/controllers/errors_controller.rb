class ErrorsController < ApplicationController

  def new
    @error = Error.new
  end

  def show
    @error = Error.find(params[:id])
  end

  def confirm
    @error = Error.new(error_params)
  end

  def create
    @error = Error.new(error_params)
    if @error.save
      flash[:notice] = "エラー対応を記録しました"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @error = Error.find(params[:id])
  end

  def update
    @error = Error.find(params[:id])
    if @error.update(error_params)
      flash[:notice] = "エラー対応内容を更新しました"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    error = Error.find(params[:id])
    error.destroy
    flash[:notice] = "エラー対応を削除しました"
    redirect_to :root_path
  end

  private

  def error_params
    params.require(:error).permit(:title, :image, :detail, :study_phase, :solution,
                                  :url, :mentor_name, :technical_item_id)
  end
end
