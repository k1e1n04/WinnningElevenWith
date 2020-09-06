class PlayersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :destroy, :update]
  def new
    @player = Player.new
  end

  def index
    if params[:search] == nil
      @players= Player.all
    elsif params[:search] == ''
      @players= Player.all
    else
      #部分検索
      @players = Player.where("name LIKE ? ",'%' + params[:search] + '%')
    end
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @player = Player.find(params[:id])
    @review = Review.new
    @reviews = @player.reviews
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to :action => "show", :id => @player.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to action: :index
  end
  





  private
  def player_params
    params.require(:player).permit(:name,:icon,:team,:positions,:total,:level,:stronger_foot,:height,:age,:country,:position,:Playing_styles,:offensive_awareness,:cost,:ball_control,:dribbling,:tight_possession,:low_pass,:lofted_pass,:finishing,:heading,:set_piece_taking,:curve,:speed,:acceleration,:jumping,:kicking_power,:physical_contact,:balance,:stamina,:defensive_awareness,:ball_winning,:aggression,:gk_awareness,:gk_clearing,:gk_reflexes,:gk_reach,:weak_foot_usage,:weak_foot_accuracy,:conditioning,:injury_resistance,:play_skills,:gk_cathing)
  end
 

end
