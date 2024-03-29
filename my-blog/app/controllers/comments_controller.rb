class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.build(comment_params)
        if @comment.save
            redirect_to @article, notice: 'Comment was successfully created.'
        else
            render :new
        end
    end

    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      if @comment.destroy
        redirect_to @article, notice: 'Comment was successfully destroyed.'
      else
        redirect_to @article, notice: 'Failed to destroy comment.'
      end
    end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
