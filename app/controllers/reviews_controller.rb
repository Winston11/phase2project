class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update]
    before_action :authorized

    def index
    @reviews = Review.all
        render "index"

    end

    def show
        render "show"

    end

    def new
        @review = Review.new
        render "new"
    end

    def create
        @review = Review.create(strong_params(:overall_score, owner_id, streaming_id, comment))
            redirect_to review_path(@review)
        else

            redirect_to new_review_path
        end
    end

    def destroy

        @review.destroy
        redirect_to login_path

    end

    private 

    def strong_params(*args)

        params.require(:review.permit(*args)

    end

    def define_variable

        @review = Review.find(params[:id])

    end

end
