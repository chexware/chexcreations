require "rails_helper"

RSpec.feature "Sending contact request", type: :feature do
    scenario "User sends correct contact request" do
        visit "/contact"
        within("#new_contact") do
            fill_in 'Name', with: 'Test'
            fill_in 'Email', with: 'correct@email.com'
            fill_in 'Message', with: 'test message'
        end
        click_button "Send Message"
    
        expect(page).to have_content("Thank you for contacting me! I will be in touch soon ;)")
    end

  scenario "User sends incorrect contact request" do
    visit "/contact"
    within("#new_contact") do
        fill_in 'Name', with: 'Test'
        fill_in 'Email', with: 'error'
        fill_in 'Message', with: 'test message'
    end

    click_button "Send Message"

    expect(page).to have_text("Invalid name or e-mail address")
  end

  
end