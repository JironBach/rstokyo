module Rstokyo::Routing
  def self.index(options = {})
    options[:path] ||= '/'
    options[:param] ||= false
    Rails.application.routes.draw do
      match 'index(/:action(/:id))(.:format)', to: "index#:action", via: [:get, :post]
    end unless options[:param]
  end

  def self.inquiry(options = {})
    options[:path] ||= '/'
    options[:param] ||= false
    Rails.application.routes.draw do
      match 'inquiry(/:action(/:id))(.:format)', to: "inquiry#:action", via: [:get, :post, :patch]
    end unless options[:param]
  end

  def self.admin(options = {})
    options[:path] ||= '/'
    options[:param] ||= false
    Rails.application.routes.draw do
      match 'admin(/:action(/:id))(.:format)', to: "admin#:action", via: [:get, :post]
    end unless options[:param]
  end

  def self.visual_migrate(options = {})
    options[:path] ||= 'visual_migrate'
    Rails.application.routes.draw do
      mount VisualMigrate::Engine => "/visual_migrate" if ENV['RAILS_ENV'] != 'production'
    end unless options[:param]
  end

end
