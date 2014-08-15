class UsersController < ActionController::Base

  def index
    p 'indexxxxx'
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
      User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
      redirect_to :show
  end

  def verify
    p 'hit verify'
    if user = User.where('email = ?', params[:user][:email])
      if user && user.match_password(params[:user][:password])
        p 'we found youuuuuuuu'
      else
        p 'wrong passworddddd'
      end
    else
      p 'you are an imposter!!!!!!!!!!!!'
    end

  end

  def show
  end

  def match_password(login_password="")
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  end


end