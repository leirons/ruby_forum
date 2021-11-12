class AdminController < ApplicationController
  def index
    @u = User.all
  end
end
