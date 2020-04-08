require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "Project entry is  not valid" do
    it "is not valid without a title" do
      project = Project.new
      project.link = "https://testl.com"
      project.kind = "Art"
      expect(project).not_to be_valid
    end

    it "is not valid with title containing non alphanumeric characters" do
      project = Project.new
      project.title = "!!!!"
      project.link = "https://testl.com"
      project.kind = "Art"
      expect(project).not_to be_valid
    end

    it "is not valid without a link" do
      project = Project.new
      project.title = "Test"
      project.kind = "Art"
      expect(project).not_to be_valid
    end

    it "is not valid without a valid link" do
      project = Project.new
      project.title = "Test"
      project.link = "this will fail"
      project.kind = "Art"
      expect(project).not_to be_valid
    end

    it "is not valid without a kind" do
      project = Project.new
      project.title = "Test"
      project.link = "https://testl.com"
      expect(project).not_to be_valid
    end

    it "is not valid with wrong kind" do
      project = Project.new
      project.title = "Test"
      project.link = "https://testl.com"
      project.kind = "TEST KIND"
      expect(project).not_to be_valid
    end
  end

  describe "Project entry is valid" do
    it "is valid without an image" do
      project = Project.new
      project.title = "Test"
      project.link = "https://testl.com"
      project.kind = "Art"
      expect(project).to be_valid
    end    

    it "is valid with an uploaded image" do
      pending "add some examples to (or delete) #{__FILE__}"
    end   
  end

end
