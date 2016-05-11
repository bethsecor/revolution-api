class Api::V1::LegislatorsController < Api::V1::ApiController
  respond_to :json

  def show
    respond_with Legislator.find(params[:id])
  end

  def create
    respond_with :api, :v1, Legislator.create(legislator_params)
  end

  private

    def legislator_params
      params.require(:legislator).permit(:name,
                                         :state,
                                         :district,
                                         :political_party,
                                         :term_starts_on,
                                         :term_ends_on)
    end
end
