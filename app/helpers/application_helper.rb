# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def text_direction
    I18n.translate(:'bidi.direction') == 'right-to-left' ? 'rtl' : 'ltr'
  end
  
  def available_locale_links
    I18n.available_locales.map do |locale| 
      link_to(locale, url_for(:locale => locale))
    end
  end
end
