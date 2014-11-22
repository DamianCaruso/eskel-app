require 'tilt/erubis'
Cuba.settings[:render][:template_engine] = 'erb'

Cuba.use Rack::Rewrite do
  rewrite %r{^/(css|js|img)/(.*)/cb(.[^\/]*)$}, '/$1/$2'
end
Cuba.use Rack::Sendfile 
Cuba.use Rack::TryStatic, root: './public', urls: %w[/]
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