class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter :set_locale
  
  protected
  
    def set_locale
      I18n.locale = params[:locale] || :en
    end

    def default_url_options(options = nil)
      {:locale => I18n.locale}
    end
end
