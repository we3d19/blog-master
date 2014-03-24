class CommentsController < ApplicationController
  http_basic_authenticate_with name: "we3d", password: "test", except: [:index, :show]
 def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to post_path(@post)
  end
end
