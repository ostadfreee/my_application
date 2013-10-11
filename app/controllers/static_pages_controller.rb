class StaticPagesController < ApplicationController
  
  def home
    @users = User.all
  end

  def projects
  end

  def services
  end

  def downloads
  end

  def about
  end

  def contact
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    @selected_type = params[:type]
    @types = %w(Html Plain)
  end
  
end
