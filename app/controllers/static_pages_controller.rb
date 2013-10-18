class StaticPagesController < ApplicationController

  def home
    
    
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
  def email_contact()
      Contact.send_email(params[:name],params[:message]).deliver
      redirect_to contact_url
  end
  def login
  end
  
end
