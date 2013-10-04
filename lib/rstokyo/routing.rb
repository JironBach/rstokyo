module Rstokyo::Routing
  def self.admin(options = {})
    options[:path] ||= 'admin'
    options[:param] ||= false
    Rails.application.routes.draw do
      namespace :admin, path: options[:path] do
        root to: 'index#index'
        resources :admin
      end
    end unless options[:param]
  end

  def self.front(options = {})
    options[:path] ||= '/'
    options[:param] ||= false
    Rails.application.routes.draw do
      namespace :front, path: options[:path] do
        root to: 'index#index'
        resources :index
      end
    end unless options[:param]
  end
end
