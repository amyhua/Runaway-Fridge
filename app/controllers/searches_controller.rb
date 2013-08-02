class SearchesController < ApplicationController
  before_filter :find_search, :only => [:show, :edit, :update, :destroy]
  before_filter :update_ingredients, :except => [:new, :create]
  
  # GET /searches
  # GET /searches.json
  def all
    @searches = Search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @searches }
    end
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
    # Get ingredient objects from Query string
    
    @query_arr = @search.query.split(",")
    @search.ingredients = []
    @s = @search.ingredients
    for word in @query_arr
      ing = Ingredient.find_by_name(word)
      @s.push(ing)
    end
    @search.update_attributes(params[:search])
    @recipes = []
    for ing in @search.ingredients
      @recipes.concat(ing.recipes)
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search }
    end
  end

  # GET /searches/new
  # GET /searches/new.json
  def new
    @search = Search.new

    #respond_to do |format|
    #  
    #  format.html 
    #  format.json { render json: @search }
    # end
  end
 
  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(params[:search]) #query string
    @search.save
    redirect_to @search
  end

  # PUT /searches/1
  # PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update_attributes(params[:search])
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy

    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :no_content }
    end
  end

  
  private
  
  def find_search
    @search = Search.find(params[:id])
  end
  def update_ingredients
    
  end


   #private
    #def check_ingredients
     # @ingredient_tag = params[:ingredient]
   # end
end
