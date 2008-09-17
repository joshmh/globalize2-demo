# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def text_direction
    I18n.translate(:'bidi.direction') == 'right-to-left' ? 'rtl' : 'ltr'
  end
end
