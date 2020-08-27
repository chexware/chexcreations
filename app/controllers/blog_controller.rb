class BlogController < ApplicationController
    def load
        @contact = Contact.new
        @articles = Article.all
    end

    private
  
    def article_params
        params.require(:article).permit(:id,:title, :content)
    end

end
