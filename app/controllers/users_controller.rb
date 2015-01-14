# class UsersController < ApplicationController

#   def index
#     @users = User.all
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     user = User.create( user_params )
#     redirect_to user_path(user)
#   end

#   def edit
#     @user = User.find( params[:id] )
#   end

#   def update
#     edited_user = User.find( params[:id] )
#     edited_user.update( user_params )
#     redirect_to user_path(edited_user)
#   end

#   def show
#     @user = User.find(params[:id])
#   end

#   def destroy
#     User.delete( params[:id] )
#     redirect_to users_path
#   end

#   def delete_avatar
#     @user = User.find(params[:id])
#     @user.avatar = nil
#     @user.save
#     redirect_to user_path(@user)
#   end

#   private

#   def user_params
#     params.require(:user).permit(:username, :avatar)
#   end

# end
