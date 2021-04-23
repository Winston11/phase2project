class UsersController < ApplicationController
    before_action :define_variable
    #  .only: [:show, :edit, :update, :destroy]
    before_action :restrict_access
    # , only: [:show, :edit, :update, :destroy, :index]

    def welcome
    
        @user = User.find(session[:current_user])

    end

    def index

        @users = User.all
        render "index"

    end

    def show

        session[:current_user] = params[:id]
        render "show"

    end

    def new
        @user = User.new
        render "new"
    end

    def create
        @user = User.create(strong_params(:name, :password, :username))
        if @user.save && @user.authenticate(params[:user][:password])
            session[:current_user] = @user.id
            redirect_to welcome_path
        else
            render "new"
        end
    end

    def edit

        render "edit"

    end

    def update

        @user.update(strong_params(:username, :password))
        if @user.save
            redirect_to user_path(@user)
        else
            redirect_to edit_user_path
        end 

    end

    def destroy

        @user.destroy
        redirect_to login_path

    end

    def login 

        render "login"
  
    end

    def post_login
        current_user = User.find_by(username: params[:user][:username])
        if current_user != nil && current_user.authenticate(params[:user][:password]) 
            session[:current_user] = current_user.id
            redirect_to welcome_path
        else
            # flash[:error] = "User Not Found!"
            redirect_to login_path
        end
        
    end

    def logout

        # session.clear
        flash[:error] = "Binge Ya Later !!!"
        redirect_to login_path
    end

    private 

    def strong_params(*args)

        params.require(:user).permit(*args)

    end

    def define_variable

        # @user = User.find(params[ :id])
        @user = User.find params.require(:user_id)

    end

    def restrict_access

        return head(:forbidden) unless session.include? :current_user

    end

end
