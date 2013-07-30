require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    
    it "should have the content 'Tseng Wen Chi'" do
    	visit root_path
      	expect(page).to have_content('Tseng Wen Chi')
    end

    it "should have the base title" do
    	visit root_path
    	expect(page).to have_title("Tseng Wen Chi")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title(' | Design Portfolio')
    end
  end
end
