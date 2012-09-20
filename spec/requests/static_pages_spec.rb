require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
#  let(:base_title) { "Cardinform" }

  describe "About page" do
    before { visit about_path }
    
    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About Us')) }
  end
  
  describe "Privacy page" do
    
    it "should have the content 'Privacy Policy'" do
      visit privacy_path
      page.should have_content('Privacy Policy')
    end
    
    it "should have the right title" do
      visit privacy_path
      page.should have_selector('title', text: "Cardinform | Privacy Policy")
    end
  end
end
