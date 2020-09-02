class BlogController < ApplicationController
    def load
        @contact = Contact.new
        @articles = Article.all.reverse_order
    end

    private
  
    def article_params
        params.require(:article).permit(:id,:title, :content)
    end

end
