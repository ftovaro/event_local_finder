module Search
  class Searcher
    attr_accessor :events
    attr_reader :search_param, :title
    def initialize(search_param:)
      @search_param = search_param
      @title = search_param.dig("title")
    end

    def process
      return [] if search_param.blank?

      find_with_title
    end

    def find_with_title
      return [] if title.blank?

      @events = Event.where("title LIKE '%#{title}%'")

      @events
    end
  end
end
