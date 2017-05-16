class PostsController < ApplicationController
    
  # GET /commits
  # GET /commits.json
  def index
  end

  # GET /commits/1
  # GET /commits/1.json
  def show
  end

  # GET /commits/new
  def new
  end

  # GET /commits/1/edit
  def edit
  end

  # POST /commits
  # POST /commits.json
  def create
    _title = params[:title]
    _content = params[:content]
    _writer = params[:writer]
    
    Post.create(title: _title, content: _content, writer: _writer)
  end

  # PATCH/PUT /commits/1
  # PATCH/PUT /commits/1.json
  def update
    
  end

  # DELETE /commits/1
  # DELETE /commits/1.json
  def destroy
  end
  
end
