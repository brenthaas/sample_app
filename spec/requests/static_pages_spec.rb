require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  describe "Home Page" do
    before { visit root_path }
    it "should have the content 'Sample App'" do
      should have_selector('p', text: 'This is a sample app!')
    end
    it "should have the base title..." do
      should have_selector('title', text: full_title(''))
    end
    it "... but not the page title" do
      should_not have_selector('title', text: "| Home")
    end
  end
  
  describe "About Page" do
    it "Should say 'About Us'" do
      visit about_path
      should have_content('About Us')
    end
    it "should have the right title" do
      visit about_path
      should have_selector('title', text: full_title("About Us"))
    end
  end
  
  describe "Contact page" do
  
      it "should have the h1 'Contact'" do
        visit contact_path
        page.should have_selector('h1', text: 'Contact')
      end
  
      it "should have the title 'Contact'" do
        visit contact_path
        page.should have_selector('title', text: full_title("Contact"))
      end
  end
end
