class SelectionsController < ApplicationController
    before_action :define_variable, only: [:show, :index]

    def index

        @selections = Selection.all
        render "index"

    end 

    def show

        render "show"

    end

    private 

    def strong_params(*args)

        params.require(:selection).permit(*args)

    end

    def define_variable

        @selection = Selection(params[:id])

    end

end
