require 'spec_helper'

describe "StaticPages" do

  describe "About" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "Cardinform | About Us")
    end
  end
  
  describe "Privacy" do
    
    it "should have the content 'Privacy Policy'" do
      visit '/static_pages/privacy'
      page.should have_content('Privacy Policy')
    end
    
    it "should have the right title" do
      visit '/static_pages/privacy'
      page.should have_selector('title', text: "Cardinform | Privacy Policy")
    end
  end
end
