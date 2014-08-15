class UsersController < ActionController::Base

  def index
    p 'indexxxxx'
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
  end

  def verify
    @user = User.where('email = ? AND password = ?', params[:user][:email], params[:user][:password])
    if @user != []
      redirect_to user_path(id: @user.first.id)
    else
      flash[:notice] = "Login Fail"
      redirect_to root_path, flash: { notice: "Login Fail"}
    end      
  end

  def show
  end


end