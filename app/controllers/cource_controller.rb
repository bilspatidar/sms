class CourceController < ApplicationController

    def index
        @cources = current_user.cources.all
    end

    def new
        @cource = Cource.new
    end

    def create
        @cource = Cource.new(cource_params)
        @cource.user_id = current_user.id
        if @cource.save
            redirect_to cource_index_path
        else
            render :new,status: :unprocessable_entity
        end
    end 

    def edit
     @cource = Cource.find_by_id(params[:id])

    end
    def destroy
        @cource = Cource.find_by(paramss[:id])
        @cource.destroy
      redirect_to cource_index_path
  end

    private

    def cource_params
    params.permit(:title,:duration,:fee)
    end
end
