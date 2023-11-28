class Api::V1::SearchController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    presenter = SearchPresenter::Index.new(params: params)
    return render presenter.no_params if presenter.empty_params?

    render presenter.find_events
  end
end
