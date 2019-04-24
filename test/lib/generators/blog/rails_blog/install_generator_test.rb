require 'test_helper'
require 'generators/rails_blog/install/install_generator'

module Blog
  class RailsBlog::InstallGeneratorTest < Rails::Generators::TestCase
    tests RailsBlog::InstallGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
