require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Article entry is  not valid" do
    it "without title." do
      article = Article.new
      article.content = "<p>Test Content</p>"
      expect(article).not_to be_valid
    end
    it "without content." do
      article = Article.new
      article.title = "<p>Test Content</p>"
      expect(article).not_to be_valid
    end
  end
  describe "entry is valid " do
    it "without cover image." do
      article = Article.new
      article.title = "Test"
      article.content = "<p>Test Content</p>"
      expect(article).to be_valid
    end

    it "with cover image." do
      article = Article.new
      article.title = "Test"
      article.content = "<p>Test Content</p>"
      article.cover = file_fixture("chex-logo-small.png")
      expect(article).to be_valid
    end
  end
end
