class PagesController < StaticController
  def index
    @parkings = Parking.all
    @hash = Gmaps4rails.build_markers(@parkings) do |parkings, marker|
    marker.lat parkings.latitude
    marker.lng parkings.longitude
    #marker.infowindow render_to_string("find_parking") #:partial => "layouts/menu")
    #marker.infowindow render_to_string(:partial => "/reserves/index")#, :locals => { :object => reserve}).gsub(/\n/, '').gsub(/"/, '\"')
    #marker.call (:partial => "layouts/menu")
    marker.infowindow parkings.address
    #render_to_string(:partial => "/reserves", :locals => { :object => user}).gsub(/\n/, '').gsub(/"/, '\"')
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
