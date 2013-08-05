require 'spec_helper'



feature "Creating recipes" do
  
  
  before do
    visit "/recipes/new"
    fill_in 'Recipe Name', :with => 'Stuffed Zucchini 2'
    fill_in 'Recipe URL', :with => 'http://allrecipes.com/Recipe/Stuffed-Zucchini-2/'
    fill_in 'Recipe Directions', :with => "This is how you make zucchini!"
    fill_in 'Recipe Image (URL)', :with => 'http://images.media-allrecipes.com/userphotos/250x250/00/88/42/884218.jpg'
    fill_in 'Number of Servings', :with => '3'
    fill_in 'Total Time to Prep and Cook (in minutes)', :with => '75'
    fill_in 'Rating out of 5 Stars', :with => '4.522613'
    fill_in 'Number of Reviews', :with => '162'
    
    
    click_button 'Create Recipe'    
  end
  
  scenario "can create recipes" do
    click_button 'Create Recipe'
    page.should have_content("Recipe was successfully created.") 
  end

end
