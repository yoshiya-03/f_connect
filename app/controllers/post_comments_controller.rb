class PostCommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    post_comment = current_user.post_comments.new(post_comment_params)
    post_comment.post_id = post.id
    post_comment.save

    post.create_notification_post_comment!(current_user,post_comment.id)
      # ここまで
      # respond_to :js
    redirect_to post_path(post)
  end

  def destroy
     PostComment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    redirect_to post_path(params[:post_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
