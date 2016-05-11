class Api::V1::LegislatorsController < Api::V1::ApiController
  respond_to :json

  def show
    respond_with Legislator.find(params[:id])
  end
end
