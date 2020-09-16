require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "entry is not valid" do
    it "without a title" do
      project = Project.new
      project.link = "https://testl.com"
      expect(project).not_to be_valid
    end

    it "with title containing non alphanumeric characters" do
      project = Project.new
      project.title = "!!!!"
      project.link = "https://testl.com"
      expect(project).not_to be_valid
    end

    it "without a link" do
      project = Project.new
      project.title = "Test"
      expect(project).not_to be_valid
    end

    it "is not valid without a valid link" do
      project = Project.new
      project.title = "Test"
      project.link = "this will fail"
      expect(project).not_to be_valid
    end
  end

  describe "entry is valid" do
    it "without an image" do
      project = Project.new
      project.title = "Test"
      project.link = "https://testl.com"
      expect(project).to be_valid
    end    

    it "with an image" do
      project = Project.new
      project.title = "Test"
      project.link = "https://testl.com"
      project.image = file_fixture("chex-logo-small.png")
      expect(project).to be_valid
    end
  end

end
