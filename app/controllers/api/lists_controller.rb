class Api::ListsController < ApiController
    before_action :authenticated?

    def create
        list = List.new(list_params)
        if list.save
            render json: list
        else
            render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        begin
            list = List.find(params[:id])
            list.destroy
            render json: { message: "List deleted" }, status: :no_content
        rescue ActiveRecord::RecordNotFound
            render :json => { message: "List not found" }, :status => :not_found
        end
    end

    def update
        list = List.find(params[:id])
        if list.update(list_params)
            render json: list
        else
            render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def list_params
        params.require(:list).permit(:user_id, :name)
    end

end
