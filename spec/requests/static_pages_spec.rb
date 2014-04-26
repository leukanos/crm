require 'spec_helper'

describe "StaticPages" do
  describe "Home" do
    it "Should have content 'Home'" do
    	visit 'static_pages/home'
    	expect(page).to have_content('Home')
    end

    it "Should have the title 'CRM | Home'" do
    	visit 'static_pages/home'
    	expect(page).to have_title('CRM | Home')
    end
  end

  describe "Help" do
  	it "Should have content 'Help'" do
  		visit 'static_pages/help'
  		expect(page).to have_content('Pomoc')
  	end

  	it "SHould have the title 'CRM | Pomoc'" do
  		visit 'static_pages/help'
  		expect(page).to have_title('CRM | Pomoc')
  	end
  end
end
