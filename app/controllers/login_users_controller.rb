class LoginUsersController < ApplicationController
  before_action :set_login_user, only: %i[ show update destroy ]

  # GET /login_users
  def index
    @login_users = LoginUser.all

    render json: @login_users
  end

  # GET /login_users/1
  def show
    render json: @login_user
  end

  # POST /login_users
  def create
    @login_user = LoginUser.new(login_user_params)

    if @login_user.save
      render json: @login_user, status: :created, location: @login_user
    else
      render json: @login_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /login_users/1
  def update
    if @login_user.update(login_user_params)
      render json: @login_user
    else
      render json: @login_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /login_users/1
  def destroy
    @login_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_user
      @login_user = LoginUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def login_user_params
      params.require(:login_user).permit(:firstname, :lastname, :email)
    end
end
