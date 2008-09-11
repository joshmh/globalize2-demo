class Post < ActiveRecord::Base
  translates :title, :text, :fallbacks => Globalize::Locale::Fallbacks.new('de-DE' => %w[en-US he-IL])
end