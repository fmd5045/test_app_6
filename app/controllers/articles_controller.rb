class ArticlesController < ApplicationController
def show

    #@makes the variable into an instance variable, this make it availble on the show view
    #params allows you to pass parameter, its a hash data structure
    @article = Article.find(params[:id])


end

end