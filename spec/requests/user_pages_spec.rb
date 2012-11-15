require 'spec_helper'

describe "UserPages" do
  describe "Users page" do
    before {visit singup_path}
    it "should have the h1 'Sign Up'" do
      page.should have_selector('h1', :text => 'Sign Up')
    end

    it "should have the title base title" do
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => '|Sign Up')
    end
  end
end
