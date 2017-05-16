class PostsController < ApplicationController
    
  # GET /commits
  def index
      @posts = Post.all
  end

  # GET /commits/1
  def show
      @post = Post.find(params[:id])
  end

  # GET /commits/new
  def new
  end

  # GET /commits/1/edit
  def edit
      @post = Post.find(params[:id])
  end

  # POST /commits
  def create
    _title = params[:title]
    _content = params[:content]
    _writer = params[:writer]
    
    Post.create(title: _title, content: _content, writer: _writer)
    
    redirect_to "/posts"
  end

  # PATCH/PUT /commits/1
  def update
    _title = params[:title]
    _content = params[:content]
    _writer = params[:writer]
    
    post = Post.find(params[:id])
    post.update(title: _title, content: _content, writer: _writer)
    
    redirect_to "/posts"
  end

  # DELETE /commits/1
  def delete
      Post.delete(params[:id])
      
      redirect_to "/posts"
  end
  
end
