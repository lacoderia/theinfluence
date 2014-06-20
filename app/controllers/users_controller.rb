class UsersController < ApplicationController

  layout "admin_dashboard"

  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        flash[:notice] = "El usuario fue creado exitosamente."
        format.html { render :new, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        flash[:alert] = "El usuario no pudo ser creado."
        format.html { render :new, notice: 'User could not be created.' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to :admin, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end