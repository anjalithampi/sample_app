require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Home page" do
    
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text =>"Sample App")
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text =>"#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text =>"Help")
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text =>"#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text =>"About Us")
    end
    it "should have the title 'Help'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text =>"#{base_title} | About Us")
    end
  end
  
  describe "Contact Details" do
    it "should have the content 'Contact Details'" do
      visit '/static_pages/contact'
      page.should have_content('Contact Details')
    end
    it "should have the h1 'Contact Details '" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact Details")
    end
    it "should have the title 'Contact Details'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact Details")
    end
  end
end