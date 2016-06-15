class UsersController < ApplicationController
  def index
    respond_to do |format|
      @users = User.search_by_full_name(params[:q])
      format.json
    end
  end
end