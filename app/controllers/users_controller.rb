class UsersController < ApplicationController
 before_action :authenticate_user!
# before_action :ensure_correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    # @works_images = WorksImage.all
  end

  def edit
    @user = current_user.id
  end

  def update
    @user = current_user
    if @user.update(user_params)
     redirect_to user_path(@user.id)
    else
      render action: :edit
    end
  end

  def unsubscribe
     @user = current_user.id
  end

  def withdraw
    @user = User.find(current_user.id)
    @user.update(is_active: false)
    # @customer.save
    reset_session
    redirect_to root_path
    flash[:notice] = "ご利用ありがとうございました。"
  end

  private

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end

  def user_params
    params.require(:user).permit(:name,
                                 :profile_image,
                                 :works_image,
                                 :email,
                                 :based_in,
                                 :introduction,
                                 :phone_number,
                                 :job_category_id,
                                 :is_active)
  end

end