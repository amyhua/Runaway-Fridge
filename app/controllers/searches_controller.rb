class SearchesController < ApplicationController
<<<<<<< HEAD
  # GET /searches
  # GET /searches.json
  def index
=======
  before_filter :find_search, :only => [:show, :edit, :update, :destroy]
  before_filter :update_ingredients, :except => [:new, :create]
  
  # GET /searches
  # GET /searches.json
  def all
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
    @searches = Search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @searches }
    end
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
<<<<<<< HEAD
    @search = Search.find(params[:id])
    #@recipes = Recipe.with_ingredient_in(@ingred_arr) # Recipe results
=======
    
    # Get ingredient objects from Query string
    
    @query_arr = @search.query.split(",")
    @search.ingredients = []
    @s = @search.ingredients
    for word in @query_arr
      ing = Ingredient.find_by_name(word)
      @s.push(ing)
    end
    @search.update_attributes(params[:search])
    #@recipes = Recipe.with_ingredient_in(@ingred_arr) # Recipe results
   # @search = Search.find(params[:id])
  #@results = Recipe.with_ingredient_in(@ingred_arr)

>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
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
<<<<<<< HEAD
    @search = Search.find(params[:id])
=======
    
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(params[:search]) #query string
<<<<<<< HEAD
    @query_arr = @search.query.split(",")
    @s = @search.ingredients
    for word in @query_arr
      #construct ingredients object
      ing = Ingredient.find_by_name(word)
      @s.push(ing)
    end

=======
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
    @search.save
    redirect_to @search
  end

  # PUT /searches/1
  # PUT /searches/1.json
  def update
<<<<<<< HEAD
    @search = Search.find(params[:id])

=======
    
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
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
<<<<<<< HEAD
    @search = Search.find(params[:id])
=======
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796
    @search.destroy

    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :no_content }
    end
  end
<<<<<<< HEAD
=======
  
  private
  
  def find_search
    @search = Search.find(params[:id])
  end
  def update_ingredients
    
  end
>>>>>>> be93e8a06ea5d7d41a0a089e289656c8dd6ce796

   #private
    #def check_ingredients
     # @ingredient_tag = params[:ingredient]
   # end
end
