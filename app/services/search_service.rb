class SearchService

  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def spots
    @_spots = Spot.where(query)
    unless center.blank?
      @_spots = @_spots.near(center, 0.804672, units: :km, :order => :distance)
    end
    @_spots.page(params[:page])
  end

  def center
    if params[:location]
      params[:location]
    elsif params[:latitude] && params[:longitude]
      [params[:latitude], params[:longitude]]
    else
      nil
    end
  end

  def query
    q = {}
    if params[:status]
      q[:status] = params[:status]
    end
    q
  end

end