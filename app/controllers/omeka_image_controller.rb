require 'omeka_client'

class OmekaImageController < ApplicationController
  def show
    # TODO: Use the Riiif url helper to construct the iiif-friendly image URL show here
    omeka_site = OmekaConfig.config[:omeka_site]
    omeka_api_key = OmekaConfig.config[:omeka_api_key]
  end
end
