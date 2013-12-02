require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the Right Title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Ruby on Rails Sample App | Home')
    end

    it "should have the H1 content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end    
  end

  describe "Help Page" do
  	it "should have the Right Title" do
  	 visit '/static_pages/help'
  	 #page.should have_content('Help')
  	 page.should have_selector('title', :text => 'Ruby on Rails Sample App | Help')
    end

    it "should have the H1 'Help'" do
  	 visit '/static_pages/help'
  	 page.should have_content('Help')
  	end

  end	

  describe "About Page" do
  	it "should have the Right Title" do
  	 visit '/static_pages/about'
  	 #page.should have_content('About Us')
  	 page.should have_selector('title', :text => 'Ruby on Rails Sample App | About Us')
    end

 	it "should have the H1 'About Us'" do
  	 visit '/static_pages/about'
  	 page.should have_content('About Us')
  	end

  end

end
