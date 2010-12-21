require 'spree_core'
require 'spree_featured_hooks'

module SpreeFeatured
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Product.class_eval do
        scope :featured,:conditions => ["featured = ?", true]
      end

    end

    config.to_prepare &method(:activate).to_proc
  end
end
