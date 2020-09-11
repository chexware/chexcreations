require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe "Contact form is  not valid" do
    it "when name is empty" do
      contact = Contact.new
      contact.email = "hello@test.om"
      contact.message = "This is a test that should pass"
      expect(contact).not_to be_valid
    end    

    it "when email is empty" do
      contact = Contact.new
      contact.name = "Test"
      contact.message = "This is a test that should pass"
      expect(contact).not_to be_valid
    end  

    it "when email is not valid" do
      contact = Contact.new
      contact.name = "Test"
      contact.email = "hello_email"
      contact.message = "This is a test that should pass"
      expect(contact).not_to be_valid
    end 

    it "when message is empty" do
      contact = Contact.new
      contact.name = "Test"
      contact.email = "hello@test.om"
      expect(contact).not_to be_valid
    end  
  end

  describe "Contact form is valid" do
    it "when all fields are filled with correct information" do
      contact = Contact.new
      contact.name = "Test"
      contact.email = "hello@test.om"
      contact.message = "This is a test that should pass"
      expect(contact).to be_valid
    end    
  end

end
