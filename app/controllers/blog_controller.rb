class BlogController < ApplicationController
    def load
        @contact = Contact.new
    end
end
