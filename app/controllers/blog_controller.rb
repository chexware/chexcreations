class BlogController < ApplicationController
    def load
        @contact = Contact.new
        @articles = Article.all.reverse_order
        @projects = Project.all
    end
end
