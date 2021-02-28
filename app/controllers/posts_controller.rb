class PostsController < ApplicationController

  before_action :set_q

   def new
    @post = Post.new
    @tags = ActsAsTaggableOn::Tag.all
   end

  def index
    #@posts = Post.all　は消してOK!
    @search = Post.ransack(params[:q])
    @posts = @search.result
    @tags = ActsAsTaggableOn::Tag.all
    # タグの一覧表示
    if params[:tag]
       @posts = Post.tagged_with(params[:tag])
      # タグ検索時にそのタグずけしているものを表示
    else

    end
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if
      @post.save
      redirect_to post_path(@post), notice: "新規投稿しました。"
    else
      @tags = ActsAsTaggableOn::Tag.all
      render 'new'
    end
  end


  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
    #コメントを作成順で取得
    @post_comments = @post.post_comments.order(created_at: :desc)
  end

  def edit
    @post = Post.find(params[:id])
    if @post.user == current_user
       render "edit"
    else
      redirect_to posts_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "編集しました"
    else
      render "edit", notice: "編集に失敗しました"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = Post.ransack(params[:q])
  end

  def ensure_correct_user
    @post = Post.find(params[:id])
    unless @post.user == current_user
      redirect_to posts_path
    end
  end
  
  def post_params
    params.require(:post).permit(:title, :image, :description, :tag_list)
  end

end
