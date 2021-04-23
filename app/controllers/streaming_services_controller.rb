class StreamingServicesController < ApplicationController
    before_action :define_variable, only: [:show, :index]

    def index

        @streaming_service = StreamingService.all
        render "index"

    end

    def show

        render "show"

    end

    private 

    def strong_params(*args)

        params.require(:streaming_service).permit(*args)

    end

    def define_variable

        @streaming_service = StreamingService.find(params[:id])

    end

end
