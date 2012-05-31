require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
	before {visit root_path }
    it "should have the content 'Patient Strength'" do
      page.should have_content('Patient Strength')
    end
  end

 describe "Help page" do
	before { visit help_path }
    
    it "should have the content 'Help'" do
      page.should have_content('Help')
    end
  end
  describe "About page" do
  	before { visit about_path }
  	it "should have the content 'About Us'" do
  		page.should have_content('About Us')
  	end
  end
end