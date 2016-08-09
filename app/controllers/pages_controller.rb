class PagesController < StaticController
  def index
    @parkings = Parking.all
    @hash = Gmaps4rails.build_markers(@parkings) do |parkings, marker|
    marker.lat parkings.latitude
    marker.lng parkings.longitude
    marker.infowindow render_to_string( :partial => "reserves/enlace")
    marker.picture({
    "url" => "http://findicons.com/files/icons/1925/signals/32/parking.png" ,
    "width" => 32 ,
    "height" => 32})
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
