module SearchPresenter
  class Index
    attr_reader :params
    def initialize(params:)
      @params = params.permit!.to_h
    end

    def empty_params?
      params.dig("title").blank?
    end

    def no_params
      { json: { message: "No params in request", events: [] }, status: :unprocessable_entity }
    end

    def find_events
      events = Search::Searcher.new(search_param: params).process
      { json: { events: events }, status: :ok }
    end
  end
end
