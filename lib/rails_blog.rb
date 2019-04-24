require "rails_blog/engine"

module RailsBlog
  # Your code goes here...
  def self.app_root
    root = RailsBlog::Engine.root
    root.to_s
  end
end
