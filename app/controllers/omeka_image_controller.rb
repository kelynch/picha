require 'omeka_client'
require 'omeka_utils'
require 'Riiif'

class OmekaImageController < ApplicationController
  def showother(sitename, identifier)
    # TODO: Use the Riiif url helper to construct the iiif-friendly image URL show here
    omeka_site = OmekaConfig.config[:sitename][:url]
    omeka_api_key = OmekaConfig.config[:sitename][:api_key]
  end

  def show
    image_info  = OmekaUtils.basic_asset_info(params[:sitename], params[:identifier])
    @iiif_image = Riiif::Engine.routes.url_helpers.info_path(params[:identifier])
  end
end
