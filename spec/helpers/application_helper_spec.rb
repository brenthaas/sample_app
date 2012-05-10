require "spec_helper"

describe "ApplicationHelper" do
  include ApplicationHelper
  
  describe "full title" do
    it "includes the given page name" do
      full_title("foo").should include("foo")
    end
    
    it "prepends the site name" do
      full_title("foo").should include("Ruby on Rails Tutorial Sample App")
    end
    
    it "doesn't include a bar when no name is given" do
      full_title("").should_not include('|')
    end
  end
end