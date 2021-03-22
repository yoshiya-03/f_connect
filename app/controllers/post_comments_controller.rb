class PostCommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    #投稿に紐づいたコメントを作成
    @post_comment = @post.post_comments.build(post_comment_params)
    # buildを使うことで、@postのidをpost_idに含んだ形でcommentインスタンスを作成。 保存がされると、render :indexによって「app/views/post_comments/index.js.erb」を探しにいく
    @post_comment.user_id = current_user.id
    if @post_comment.save!
     #　通知の作成
      @post.create_notification_post_comment!(current_user,@post_comment.id)
      render :index
    end
  end

  def destroy
    @post_comment = PostComment.find(params[:id])
    @post_comment.destroy
    render :index
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment, :post_id, :user_id)
  end

end
