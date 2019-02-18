class SessionsController < ApplicationController
  def new 
    #login
  end

  def create
    @user = User.new( params.require(:users).permit(:name,:password))
    if User.exists?(:name => @user.name)
        @checkuser = User.where("name=?", @user.name)
        #@user = User.new(user_params_singin)
        if @checkuser[0].password == @user.password
            session[:checkuser_id] = @checkuser[0].id
            flash[:notice]="Successfully loged in!!!!!"
            if current_user.admin?
              redirect_to admin_statuts_path
            else
              redirect_to new_service_path
            end
        else
            flash[:notice]="Enter correct password"
            render 'new'
        end
    else 
        flash[:notice]="Enter correct username"
        render 'new'
    end
  end

  def destroy
    session[:checkuser_id] = nil   
    #reset_session #wipe out session and everything in it
    redirect_to users_path
  end
end
