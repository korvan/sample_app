require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the h1 'Sample App'" do
      get 'home'
      response.should have_selector('h1', :content => 'Sample App')
    end

    it "should have the title 'Home'" do
      get 'home'
      response.should have_selector('title',
        :content => @base_title + " | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the h1 'Contact'" do
      get 'contact'
      response.should have_selector('h1', :content => 'Contact')
    end

    it "should have the title 'Help'" do
      get 'contact'
      response.should have_selector('title',
        :content => @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successfull" do
      get 'about'
      response.should be_success
    end

      it "should have the h1 'About Us'" do
      get 'about'
      response.should have_selector('h1', :content => 'About Us')
    end

    it "should have the title 'About'" do
      get 'about'
      response.should have_selector('title',
        :content => @base_title + " | About")
    end
  end

  describe "GET 'help'" do
    it "should be successfull" do
      get 'help'
      response.should be_success
    end

      it "should have the h1 'Help'" do
      get 'help'
      response.should have_selector('h1', :content => 'Help')
    end

    it "should have the title 'Help'" do
      get 'help'
      response.should have_selector('title',
        :content => @base_title + " | Help")
    end
  end

end
