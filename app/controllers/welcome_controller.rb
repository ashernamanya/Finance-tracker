class WelcomeController<ApplicationController
    
def index
  redirect_to welcome_path if signed_in?
        
 end
 end 