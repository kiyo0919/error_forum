class ErrorsController < ApplicationController
  before_action :authenticate_mentor!, only: [:new, :create, :confirm, :edit, :update, :destroy]

  def new
    @error = Error.new
    @learning_phases = Error.learning_phases
  end

  def show
    @error = Error.find(params[:id])
    @learning_phases = Error.learning_phases
    @comment = ErrorComment.new
  end

  def confirm
    @error = Error.new(error_params)
  end

  def create
    @error = Error.new(error_params)
    if @error.save
      flash[:notice] = "エラー対応を記録しました"
      redirect_to error_path(@error)
    else
      @learning_phases = Error.learning_phases
      render :new
    end
  end

  def edit
    @error = Error.find(params[:id])
    @learning_phases = Error.learning_phases
  end

  def update
    @error = Error.find(params[:id])
    if @error.update(error_params)
      flash[:notice] = "エラー対応内容を更新しました"
      redirect_to error_path(@error)
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
    params.require(:error).permit(:title, :image, :detail, :learning_phase, :solution,
                                  :url, :mentor_name, :used_technology_id)
  end
end
