class StaticPagesController < ApplicationController
  def home
    if User.all.empty?
      redirect_to signup_url
      flash[:notice] = 'Database without users'
    elsif !signed_in?
      redirect_to signin_url
    end
  end

  def help
  end

  def about
  end

  def contact 
  end
end
