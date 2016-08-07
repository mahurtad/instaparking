class PagesController < StaticController
  def index
    @parkings = Parking.all
    @hash = Gmaps4rails.build_markers(@parkings) do |parkings, marker|
    marker.lat parkings.latitude
    marker.lng parkings.longitude
    marker.infowindow parkings.address
    end
  end

  def about_us
  end

  def contact_us
  end

  def tos
  end

  def faq
  end
end
