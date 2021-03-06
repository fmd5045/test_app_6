class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def show
        #@makes the variable into an instance variable, this make it availble on the show view
        #params allows you to pass parameter, its a hash data structure
        @article = Article.find(params[:id])

    end
    def
    index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was created successfully."
            redirect_to (@article)
        else
            render 'new'
        end
    end

    def update
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully"
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private #anything below is a private method an can only be used in this controller.
    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
    params.require(:article).permit(:title, :description)
    end
end