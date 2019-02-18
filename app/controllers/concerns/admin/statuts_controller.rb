class Admin::StatutsController < Admin::BaseController


    def index
        @services = Service.all
    end

    def servicestatuts
        @service = Service.find(params[:id])
    end

    def acceptservice

        #update statutsofservice  rejectservice to acceptservice
        @service = Service.find(params[:id])
        @service.statutsofservice = "acceptservice"
        @service.save

        redirect_to admin_statuts_path



    end

    def rejectservice
        #not update anything
        @service = Service.find(params[:id])
        @service.statutsofservice = "rejectservice"
        @service.save
        redirect_to admin_statuts_path

    end
end