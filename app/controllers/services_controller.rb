class ServicesController < ApplicationController
    def new 
        @service = Service.new
    end

    def create
        @service = Service.new(service_params)
        if @service.save
            redirect_to min_users_path

        else
            render 'new'

        end
    end
    private 
    def service_params
        params.require(:services).permit(:username,:servicename,:descrition)
    end

end
