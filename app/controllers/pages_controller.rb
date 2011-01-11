class PagesController < ApplicationController
  before_filter :set_locale

  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end

  private
    
    def set_locale
      # if params[:locale] is nil then I18n.default_locale will be used
      I18n.locale = params[:locale]
    end
end
