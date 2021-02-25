class FavoritesController < ApplicationController
before_action :authenticate_user!
  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.new(user_id: current_user.id, post_id: @post.id)
    favorite.save!
    #通知の作成
    @post.create_notification_by(current_user)
  end

  def destroy
    favorite = current_user.favorites.find_by(post_id: params[:post_id])
    @post = Post.find(params[:post_id])
    favorite.destroy!
  end
end