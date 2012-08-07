class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @projects = current_user.projects
    @tickets = current_user.tickets
  end
end
