class ErrorCommentsController < ApplicationController
  
  def create
    @error = Error.find(params[:error_id])
    @comment = ErrorComment.new(error_comment_params)
    @comment.error_id = @error.id
    unless current_mentor.nil?
      @comment.mentor_id = current_mentor.id
    end
    @comment.save
    redirect_to error_path(@error)
  end

  def destroy
    @error = Error.find(params[:error_id])
    @comment = ErrorComment.find_by(id: params[:id], error_id: params[:error_id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def error_comment_params
    params.require(:error_comment).permit(:comment)
  end
end
