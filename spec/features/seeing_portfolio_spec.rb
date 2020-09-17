require "rails_helper"

RSpec.feature "Seeing the portfolio", type: :feature do
    scenario "User clicks on Projects modal" do
        visit "/"
       # expect(page).to have_no_xpath("//h[@class='uk-modal-page']")
        click_link('Art')
    
        expect(page).to have_css("#modal-projects")
    end

    scenario "User clicks on About modal" do
        visit "/"
        find(:xpath, "//a[@href='#modal-about']").click
    
        expect(page).to have_css('#modal-about')
    end

end