class HomeController < ApplicationController
  before_action :redirect_if_logged_in, only: [:index]

  def index
  end

  private

  def redirect_if_logged_in
    redirect_to chats_path if current_user
  end
end
