class RailsBlog::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)
  class_option :full, :type => :boolean
  desc "Configure necessary files to use RailsBlog"

  def copy_views
    root = RailsBlog.app_root
    directory "#{root}/app/views", "app/views"
  end

  def generate_model
    rake "rails_blog:install:migrations"
  end

  def add_gems
    gsub_file "Gemfile", "https://rubygems.org", "https://gems.ruby-china.com"
    gem "kaminari"
  end

  def create_routes
    unless options[:full]
      route 'mount RailsBlog::Engine => "/rails_blog"'
    end
  end
end
