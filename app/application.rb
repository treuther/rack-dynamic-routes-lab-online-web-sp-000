# Your application should only accept the /items/<ITEM NAME> route.
# Everything else should 404
# If a user requests /items/<Item Name> it should return the price of that item
# IF a user requests an item that you don't have, then return a 400 and an
# error message

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match =="/item/"
      item_name = req.path.split("/item/").last
    else
      resp.write "Route not found"
      resp.status = 404
    end

  end

end
