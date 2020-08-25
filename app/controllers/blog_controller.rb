class BlogController < ApplicationController
    def load
        @contact = Contact.new
        @albums = Vimeo.user('chexvisual').albums.index
    end
end
