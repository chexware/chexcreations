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
    pending "TO DO aricle valid with cover image #{__FILE__}"
  end
end
