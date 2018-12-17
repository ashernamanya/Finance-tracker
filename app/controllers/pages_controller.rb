class PagesController<ApplicationController

    def index
    
redirect_to root_path if not signed_in?
    end 
end 