class CreatorsController < ApplicationController

  def designer
    @users = User.all
  end

  def stylist
     @users = User.all
  end

  def hairmake
     @users = User.all
  end

  def photographer
     @users = User.all
  end

end
