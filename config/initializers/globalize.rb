ActiveRecord::Base.send :include, Globalize::Model::ActiveRecord::Translated
I18n.send :include, Globalize::LoadPath::I18n

I18n.load_path << "#{RAILS_ROOT}/lib/locale"
I18n.load_locales :en, :de
I18n.fallbacks.map :de => :en, :he => :en