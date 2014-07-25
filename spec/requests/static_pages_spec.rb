require 'spec_helper'

describe "Static pages" do

  	describe "Home page" do

	    it "should have the content 'cr3ate'" do
	      visit '/static_pages/home'
	      expect(page).to have_content('cr3ate')
	    end

	    it "should have the base title" do
	    	visit '/static_pages/home'
	    	expect(page).to have_title('cr3ate')
	    end

	    it "should not have a custom title page" do
	    	visit '/static_pages/home'
	    	expect(page).not_to have_title('| Home')
	    end
	end

    describe "Help page" do

	    it "should have the content 'Help'" do
	      visit '/static_pages/help'
	      expect(page).to have_content('Help')
	    end

	    it "should have the right title" do
	    	visit '/static_pages/help'
	    	expect(page).to have_title("cr3ate | Help")
	    end
	end


    describe "About page" do

	    it "should have the content 'About Us'" do
	      visit '/static_pages/about'
	      expect(page).to have_content('About Us')
	    end

	    it "should have the right title" do
	  		visit '/static_pages/about'
	  		expect(page).to have_title("cr3ate | About")
		end
  	end

end