class Api::V1::CommentsController < ApplicationController
    def create
        # byebug
        @comment = Comment.create(check_params)
        if @comment.valid?
            render json: @comment
        else
            render json: {errors: @comment.errors.full_messages}
        end
    end

    private

    def check_params
        params.permit(:content, :owner, :photo_id)
    end
end
