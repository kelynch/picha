require 'omeka_utils'


Riiif::Image.file_resolver = Riiif::HTTPFileResolver.new

Riiif::Image.file_resolver.id_to_uri = lambda do |id|
  OmekaUtils.basic_asset_info("omeka_a11y", id)['image_url']
end