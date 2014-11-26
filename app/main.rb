Cuba.settings[:render][:template_engine] = 'slim'

Cuba.use Rack::Rewrite do
  rewrite %r{^/(stylesheets|javascripts|images|fonts)/(.*)/(.[^\/]*)$}, '/$1/$2'
end

Cuba.use Rack::Sendfile 
Cuba.use Rack::Zippy::AssetServer, './public'
Cuba.use Rack::Runtime
Cuba.use Rack::RequestId
Cuba.use Rack::CommonLogger

if Eskel.env == :development
  Cuba.use BetterErrors::Middleware
  BetterErrors.application_root = Eskel.root.to_path
end

Cuba.use Rack::MethodOverride
Cuba.use Rack::Session::Cookie, key: "__insert app name__", secret: "__insert secret here__"
Cuba.use Rack::Head

Cuba.use Rack::Protection, use: [:authenticity_token, :form_token, :remote_referrer]

Cuba.define do
  on root do
    res.write view('home')
  end
end