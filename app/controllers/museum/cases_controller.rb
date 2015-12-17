module Museum
  class CasesController < ApplicationController
    before_filter :load_case, except: [:index]

    # GET /cases
    def index
      @cases = Museum::Case.all
    end

    # GET /cases/1
    def show
      @case.freshen_if_expired
    end

    # PATCH/PUT /cases/1/refresh
    def refresh
      if @case.freshen
        redirect_to @case.reload, notice: :success.l
      else
        redirect_to @case, error: :failure.l
      end
    end

    private

    def load_case
      @case = Museum::Case.find_by!(name: params[:id])
    end

  end
end