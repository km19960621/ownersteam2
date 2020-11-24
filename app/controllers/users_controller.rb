class UsersController < ApplicationController
  before_action :login_required, except: [:new, :create, :show, :cards]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: 'ユーザー登録しました'
      log_in @user
    else
      flash.now[:danger] = "ユーザー登録に失敗しました"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    redirect_to user_path, success: "ユーザー情報を更新しました"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    redirect_to root_path, success: "アカウントを削除しました"
    log_out @user
  end

  def cards
    @user = User.find(params[:id])
    @cards = @user.cards.page(params[:page]).per(CARD_NUM).order(:image)
  end

  def orders
    @user = User.find(params[:id])
    @cards = @user.cards
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  def orders_2010
    @user = User.find(params[:id])
    @cards = @user.cards.where("image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ?", "OL01%", "OL02%", "OL03%", "OL04%")
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  def orders_2011
    @user = User.find(params[:id])
    @cards = @user.cards.where("image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ?", "OL05%", "OL06%", "OL07%", "OL08%", "OLP01%", "OLP02%", "OLP03%")
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  def orders_2012
    @user = User.find(params[:id])
    @cards = @user.cards.where("image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ?", "OL09%", "OL10%", "OL11%", "OL12%", "OLM01%", "OLP03%", "OLP04%", "OLP05%", "OLP06%", "OLP07%", "OLP08%", "OLP09%", "OLB01%", "OLB02%", "OLB03%", "OLB04%", "OLB05%")
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  def orders_2013
    @user = User.find(params[:id])
    @cards = @user.cards.where("image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ?", "OL13%", "OL14%", "OL15%", "OL16%", "OLM02%", "OLP10%", "OLP11%", "OLP12%", "OLP13%", "OLP14%", "OLP15%", "OLP16%", "OLP17%", "OLP18%", "OLB06%", "OLB07%", "OLB08%", "OLB09%", "OLB10%", "OLB11%", "OLE01%")
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  def orders_2014
    @user = User.find(params[:id])
    @cards = @user.cards.where("image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ?", "OL17%", "OL18%", "OL19%", "OL20%", "OLM03%", "OLP19%", "OLP20%", "OLP21%", "OLP22%", "OLP23%", "OLP24%", "OLP25%", "OLB12%", "OLB13%", "OLB14%", "OLB15%", "OLE01%", "OLE02%", "OLE03%")
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  def orders_2015
    @user = User.find(params[:id])
    @cards = @user.cards.where("image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ? or image LIKE ?", "OL21%", "OL22%", "OL23%", "OL24%", "OLS01%", "OLP26%", "OLP27%", "OLP28%", "OLE04%")
    @pitchers = @cards.where(pitcher: "true")
    @catchers = @cards.where(catcher: "true")
    @firsts = @cards.where(first: "true")
    @seconds = @cards.where(second: "true")
    @thirds = @cards.where(third: "true")
    @shorts = @cards.where(short: "true")
    @lefts = @cards.where(left: "true")
    @centers = @cards.where(center: "true")
    @rights = @cards.where(right: "true")
    @dhs = @cards.where(dh: "true")
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :image, :password, :password_confirmation)
  end

  def log_in(user)
    session[:user_id] = user.id
  end
end
