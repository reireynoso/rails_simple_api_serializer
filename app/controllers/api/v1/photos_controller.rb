class Api::V1::PhotosController < ApplicationController
    def index
        @photos = Photo.all
        render json: @photos
    end

    def show 
        @photo = Photo.find(params[:id])
        render json: @photo
    end

    def update
        @photo = Photo.find(params[:id]);
        @photo.update(check_params)
        if @photo.valid?
           render json: @photo
        else
           render json: {errors: @photo.errors.full_messages}
        end
     end

    private 

    def check_params
        params.permit(:title, :photo_url_string)
    end
end
