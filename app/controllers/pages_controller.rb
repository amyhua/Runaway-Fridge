class PagesController < ActionController::Base
  def ingre
    @queries = params[:search] # some parsing to get the array of ingredients
    #loop through array of ingredients and Recipe.all.ingredients ?? 
    # store result in another @result. 
  end

  # search MVC, 1. get param from view, pass to controller, 
  # 2. controller creates new search with all ingredients
  # 3. go to search model, 
end
