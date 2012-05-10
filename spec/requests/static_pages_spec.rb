require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('This is a sample app!')
    end
    it "should have the base title..." do
      visit '/static_pages/home'
      page.should have_selector('title', 
              text: "Ruby on Rails Tutorial Sample App")
    end
    it "... but not the page title" do
      visit '/static_pages/home/'
      page.should_not have_selector('title',
              text: "| Home")
    end
  end
  
  describe "About Page" do
    it "Should say 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', 
              text: "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
end
