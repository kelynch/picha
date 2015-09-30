
Riiif::Image.file_resolver = Riiif::HTTPFileResolver.new

Riiif::Image.file_resolver.id_to_uri = lambda do |id|
  "http://gamma.library.temple.edu/omeka_a11y/items/show/#{id}.jpg"
end

Riiif::not_found_image = Riiif::Image.new('no_image', Riiif::File.new(Riiif.not_found_image))
