require 'digest/sha1'

module Helpers
  module Assets
    def image_path(path)
      asset_path("img", path)
    end

    def stylesheet_path(path)
      asset_path("css", path)
    end

    def javascript_path(path)
      asset_path("js", path)
    end

  private

    def asset_path(type, path)
      if ENV['REVISION']
        "/%s/%s/%s" % [type,path,digest]
      else
        "/%s/%s" % [type,path]
      end
    end

    def digest
      digest = Digest::SHA1.hexdigest(ENV['REVISION'])
      "cb#{digest}"
    end
  end
end