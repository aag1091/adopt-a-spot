class SearchService

  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def spots
    @_spots = Spot.where(query)
    @_spots = @_spots.near(center, 0.804672, units: :km, :order => :distance) if !center.blank?
    @_spots.page(params[:page])
  end

  def center
    if params[:location]
      params[:location]
    else
      [params[:latitude], params[:longitude]]
    end
  end

  def query
    q = {}
    if params[:active]
      q[:active] = params[:active]
    end
    q
  end

end