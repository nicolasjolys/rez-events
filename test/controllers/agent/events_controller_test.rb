require "test_helper"

class Agent::EventsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end



  def index
    @events = Event.all.sort_by(&:id).reverse
  end
end
