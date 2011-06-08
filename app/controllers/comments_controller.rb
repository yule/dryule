class CommentsController < ApplicationController
  
  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new
    @comment.beverage_id = params[:beverage_id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  
  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id if current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@comment.beverage, :notice => 'Review was successfully created.') }
        format.xml  { render :xml => @comment.beverage, :status => :created, :location => @comment.beverage }
      else
        format.html { redirect_to(@comment.beverage, :notice => 'Review was invalid, score must be 1-100.') }
        format.xml  { render :xml => @comment.beverage, :status => :unprocessable_entity, :location => @comment.beverage }        
      end
    end
  end

  
end
