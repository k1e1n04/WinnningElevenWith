class UsersController < ApplicationController
  def index
    if params[:search] == nil
      @users= User.all
    elsif params[:search] == ''
      @users= User.all
    else
      #部分検索
      @users = User.where("username LIKE ? ",'%' + params[:search] + '%')
    end
  end

  def show
    @users = User.find(params[:id])
    @posts = @users.posts.order(created_at: :desc)
  end

  #追記
  private
  def user_params
    params.require(:user).permit(:username,:image,:scud,:rate,:userid)
  end
end
