class ProfilesController < ApplicationController

    def new
        @profile=Profile.new

    end
    def index
        @profile = current_user
    
    end
    def create
        @profile=Profile.new(profile_params)
            if @profile.save
                    redirect_to static_pages_home_path, notice:
                    "Welcome #{@profile.fname}! to Ben's Tech Reviews"
            else
                    render 'new'
            end
    end
    def update
        @profile = Profile.find(params[:id])
        if @profile.update(profile_params)
          redirect_to static_pages_home_path
        else
        render 'edit'
        end
      
    
    end
    private
        def profile_params
            params.require(:profile).permit(:email, :password, :fname, :dob, :address, :city, :country, :password_confirmation)
        end



end
