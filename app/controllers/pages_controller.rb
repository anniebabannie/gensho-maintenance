class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  
  def about
  end

  def analytics
    @goal = 1507
    @total_users = User.all.count
    @total_premium = User.where(plan: "premium").count
    @percent_complete = @total_premium/@goal
  end
  
  def index
  end

  def sandbox
    @words = current_user.words
    @articles = current_user.articles
  end

  def terms_of_service
  end


  # 
  # Error pages
  # 

  def file_not_found
  end

  def internal_server_error
  end

  def unprocessable
  end

end