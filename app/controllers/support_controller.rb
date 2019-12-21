class SupportController < ApplicationController
    def support
        @contact = Contact.new
    end
end
