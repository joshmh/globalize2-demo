RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_globalize2-demo_session',
    :secret      => '29de360c9ac2990400837ec8e5e5fd4693adb94349043849517054685204364ee7e9af6133f7eb0d1d19370cac3b31f8981d6baba35f08f1298bb0e9f7f33a02'
  }
  
  config.i18n.load_path = Dir[File.join("#{Rails.root}/config/locales/**/*.{rb,yml}")]
end
