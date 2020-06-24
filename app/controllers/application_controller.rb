class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_instance, only: [:show, :edit, :update]
    
    def index
        @objects = model_class.all
    end

    def show
    end

    def new
        @object = model_class.new
    end

    def create
        @object = model_class.create(permit_params)
        redirect_to object_path(@object)
    end

    def edit
    end

    def update
        @object.update(permit_params)
        redirect_to object_path(@object)
    end

    private

    def model_class
        controller_name.classify.constantize
    end

    def get_instance
        @object = model_class.find(params[:id])
    end

    def permit_params
        params.require(controller_name.classify.underscore.to_sym).permit!
    end

    def object_path(object)
        "/#{controller_name}/#{object.id}"
    end

end
