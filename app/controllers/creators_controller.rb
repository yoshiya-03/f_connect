class CreatorsController < ApplicationController

  def designer
    @users = User.where(job_category_id: 2)
  end

  def stylist
      @users = User.where(job_category_id: 3)
  end

  def hairmake
    @users = User.where(job_category_id: 4)
  end

  def photographer
    @users = User.where(job_category_id: 5)
  end

  private

  def ensure_correct_user
    @post = Post.find(params[:id])
    unless @post.user == current_user
      redirect_to posts_path
    end
  end

end
