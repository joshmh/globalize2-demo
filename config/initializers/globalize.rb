ActiveRecord::Base.send :include, Globalize::Model::ActiveRecord::Translated

I18n.backend = Globalize::Backend::Static.new

I18n.load_path = Globalize::LoadPath.new
I18n.load_path << "#{RAILS_ROOT}/lib/locale"

I18n.fallbacks.map :de => :en, :he => :en