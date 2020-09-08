class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user,{only:[:edit,:update,:destroy]}

  def index
    if params[:search] == nil
      @posts= Post.all.order(created_at: :desc).page(params[:page]).per(20)
    elsif params[:search] == ""
      @posts= Post.all.order(created_at: :desc).page(params[:page]).per(20)
    else
      @posts= Post.where("body LIKE ? ",'%' + params[:search] + '%').page(params[:page]).per(20).order(created_at: :desc)
    end
    @like = Like.new
  end

  def timeline
    @user = current_user
    @users = @user.followings
    @posts = []
    if @users.present?
      @users.each do |user|
        posts = Post.where(user_id: user.id).order(created_at: :desc)
          #取得したユーザーの投稿一覧を@postsに格納
        @posts.concat(posts)
      end
      @posts.sort_by!{|post| post.created_at}.reverse!
    end
    @posts = Kaminari.paginate_array(@posts).page(params[:page]).per(20)
    @like = Like.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to :action => "timeline"
    else
      render :action => "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @like = Like.new
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to :action => "show", :id => @post.id
    else
      render :action => "edit"
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to action: :index
  end

  def ensure_correct_user
    @post=Post.find_by(id: params[:id])
    if @post.user_id != current_user.id
      flash[:notice]="権限がありません"
      redirect_to("/posts")
    end
  end

  private
  def post_params
    params.require(:post).permit(:body,:image,:video)
  end
end
