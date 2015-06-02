require "sinatra"

use Rack::Session::Cookie, {
  secret: "change_me",
  expire_after: 86400 # seconds
}
