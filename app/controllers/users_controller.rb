class UsersController < ApplicationController
 before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @users = User.all
  end

  def edit
    @user = current_user.id
  end

  def update
    @user = current_user
    if @user.update(user_params)
     redirect_to user_path(@user.id)
     flash[:notice] = "プロフィールを更新しました！"
    else
      render action: :"/"
    end
  end

  def unsubscribe
     @user = current_user.id
  end

  def withdraw
    @user = User.find(current_user.id)
    @user.update(is_active: false)
    reset_session
    redirect_to root_path
    flash[:notice] = "ご利用ありがとうございました。"
  end

  def favorite
    @user = User.find_by(id: params[:id])
    @favorites = Favorite.where(user_id: @user.id)
  end

  private

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end

  def favorites
    @user = current_user
    @favorite_posts = FavoritePost.where(user_id: current_user.id)
  end

  def user_params
    params.require(:user).permit(:name,
                                 :profile_image,
                                 :email,
                                 :based_in,
                                 :introduction,
                                 :phone_number,
                                 :job_category_id,
                                 :is_active,
                                 works_images_works_images: [] #複数の画像idになるため、配列[]で渡す。
                                 )
  end

end