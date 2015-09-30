
Riiif::Image.file_resolver = Riiif::HTTPFileResolver.new

Riiif::not_found_image = Riiif::Image.new('no_image', Riiif::File.new(Riiif.not_found_image))
