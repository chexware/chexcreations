require "rails_helper"

RSpec.feature "Browsing the blog", type: :feature do
    scenario "User enters the blog and there are no articles" do
        visit "/blog"
        expect(page).to have_content("Embrace the digital void while waiting for content:()")
    end

    scenario "User enters the blog and clicks on an article" do
        article = create(:article)
        article2 = create(:article, id:2, title: "More Tests", content:"<p>  TEST </p>")
        visit "/blog" 
        expect(page).to have_css("#article-#{article.id}")

        find(:xpath, "//a[@href='#modal-article-#{article.id}']").click

        expect(page).to have_css("#modal-article-#{article.id}")

        find(:xpath, "//a[@href='#modal-article-#{article2.id}']").click

        expect(page).to have_css("#modal-article-#{article2.id}")
    end
  
end