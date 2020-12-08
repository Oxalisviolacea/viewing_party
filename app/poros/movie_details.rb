class MovieDetails
  attr_reader :title, :runtime, :vote_average, :genres, :overview, :cast, :reviews, :logo
  def initialize(attributes)
    @title = attributes[:title]
    @runtime = attributes[:runtime]
    @vote_average = attributes[:vote_average]
    @genres = format_genres(attributes[:genres])
    @overview = attributes[:overview]
    @cast = attributes[:credits][:cast]
    @reviews = attributes[:reviews][:results]
    @logo = attributes[:poster_path]
  end

  def format_genres(genres)
    genres.map do |genre|
      genre[:name]
    end.join(', ')
  end

  def format_runtime
    "#{@runtime / 60} hrs #{@runtime % 60} mins"
  end
end