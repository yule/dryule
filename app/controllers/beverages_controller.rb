class BeveragesController < ApplicationController
  # GET /beverages
  # GET /beverages.xml
  before_filter :require_user, :except=>:show
  
  def index
    @beverages = Beverage.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beverages }
    end
  end

  # GET /beverages/new
  # GET /beverages/new.xml
  def new
    @beverage = Beverage.new
    @beverage.category = 'beer'
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beverage }
    end
  end

  # GET /beverages/1/edit
  def edit
    @beverage = Beverage.find(params[:id])
  end

  def show
    @beverage = Beverage.find(params[:id])
    @comment = Comment.new
  end
  
  # POST /beverages
  # POST /beverages.xml
  def create
    @beverage = Beverage.new(params[:beverage])
    respond_to do |format|
      @beverage.user_id = @current_user.id
        if @beverage.save
          format.html { redirect_to(@beverage, :notice => 'Beverage was successfully created.') }
          format.xml  { render :xml => @beverage, :status => :created, :location => @beverage }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @beverage.errors, :status => :unprocessable_entity }
        end
        
    end
  end

  # PUT /beverages/1
  # PUT /beverages/1.xml
  def update
    @beverage = Beverage.find(params[:id])
    @beverage.user_id = @current_user.id
    respond_to do |format|
      
          if @beverage.update_attributes(params[:beverage])
            format.html { redirect_to(@beverage, :notice => 'Beverage was successfully updated.') }
            format.xml  { head :ok }
          else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @beverage.errors, :status => :unprocessable_entity }
          end
          
    end
  end
end
