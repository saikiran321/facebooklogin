class StaticController < ApplicationController

def about
end
def contact
	redirect_to root_url if !signed_in?
end
def home
end
end
