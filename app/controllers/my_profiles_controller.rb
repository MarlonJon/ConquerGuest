class MyProfilesController < ApplicationController
  before_action :set_my_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @my_profiles = MyProfile.all
  end

  def show
    @user = User.all
  end

  def new
    @my_profile = current_user.my_profile.build
    respond_with(@my_profile)
  end

  def edit
  end

  def create
    @my_profile = current_user.my_profile.build(my_profile_params)
    @my_profile.save
    respond_with(@my_profile)
  end

  def update
    @my_profile.update(my_profile_params)
    respond_with(@my_profile)
  end

  def destroy
    @my_profile.destroy
    respond_with(@my_profile)
  end

  private
  
  def set_my_profile
    @my_profile = MyProfile.find(params[:id])
    redirect_to(root_path) unless @my_profile.user_id == current_user.id
  end

  def my_profile_params
    params.require(:my_profile).permit(:secondname, :bio, :age, :avatar)
  end
end
