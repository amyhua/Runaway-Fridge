require 'spec_helper'



feature "Creating searches" do
  before do
    visit '/'
  end
  
  scenario 'create a valid search' do
    fill_in "Don't know what to eat? List something tasty. We'll take care of the rest.", :with => 'celery,steak' 
    page.content should_have('Chicken Enchiladas II')
    page.content should_have('Baadi')
    
  end
end     

