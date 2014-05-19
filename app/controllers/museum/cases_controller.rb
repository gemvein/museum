module Museum
  class CasesController < ApplicationController

    # GET /cases
    def index
      @cases = Museum::Case.all
    end

    # GET /cases/1
    def show
      if load_case
        @case.freshen_if_expired
      end
    end

    # PATCH/PUT /cases/1/refresh
    def refresh
      if load_case
        if @case.freshen
          redirect_to @case.reload, notice: :success.l
        else
          redirect_to @case, error: :failure.l
        end
      end
    end

    private

    def not_found
      render :file => "#{Rails.root}/public/404", :status => :not_found
      false #return false so things will fail
    end

    def load_case
      @case = Museum::Case.find_by(name: params[:id]) or not_found
    end

  end
end