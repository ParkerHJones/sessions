module Api 
    module V1 
      class SessionsController < ApplicationController 
        def index 
        sessions = Session.all

        render json: SessionSerializer.new(sessions).serialized_json
        end 

        def show 
          session = Session.find_by(slug: params[:slug])  

          render json: SessionSerializer.new(session).serialized_json
        end 

        def create 
            session = Session.new(session_params)

            if session.save
                render json: SessionSerializer.new(session).serialized_json
            else
                render json: { error: session.errors.messages }, status: 422
            end 
        end 

        def update
            session = Session.find_by(slug: params[:slug])

            if session.update(session_params)
                render json: SessionSerializer.new(session).serialized_json
            else
                render json: { error: session.errors.messages }, status: 422
            end 
        end 

        def destroy
            session = Session.find_by(slug: params[:slug])

            if session.destroy
                head :no_content
            else
                render json: { error: session.errors.messages }, status: 422
            end 
        end 

        private 

        def session_params
            params.require(:session).permit(:name, :image_url)
        end 
      end 
    end
end 
