require 'spec_helper'

describe "Contenful Configuration" do
  stub_authorization!

  before do
    visit spree.admin_path
  end

  context "edit" do
    before do
      click_link "Contentful Settings"
    end

    it "should be able to edit contentful settings" do
      fill_in "contentful_apikey", with: "my awesome key"
      fill_in "contentful_space", with: "spree123"
      click_button "Update"
      expect(page).to have_content("Contentful has been successfully updated!")
    end

  end
end
