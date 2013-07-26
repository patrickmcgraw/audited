Bundler.require(:default) if defined?(Bundler)

module RailsApp
  class Application < Rails::Application
    config.root = File.expand_path('../../', __FILE__)

    ###
    # This will mimick the pre-Rails 3.2 behavior we had for protected attributes
    # until we can get strong parameters into the application.
    if config.active_record and config.active_record.respond_to?(:whitelist_attributes=)
      config.active_record.whitelist_attributes = false 
    end
  end
end
