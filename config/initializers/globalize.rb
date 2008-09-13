ActiveRecord::Base.send :include, Globalize::Model::ActiveRecord::Translated
I18n.send :include, Globalize::LoadPath::I18n

# require 'globalize/backend/chain'
# I18n.chain_backends "Globalize::Backend::Static", I18n.backend

I18n.load_path << "#{RAILS_ROOT}/lib/locale"
I18n.load_locales 'en', 'de'