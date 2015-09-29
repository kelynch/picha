require 'omeka_client'

class OmekaImageController < ApplicationController
  def show |site_name|
    # TODO: Use the Riiif url helper to construct the iiif-friendly image URL show here
    omeka_site = OmekaConfig.config[:site_name][:url]
    omeka_api_key = OmekaConfig.config[:site_name][:api_key]
  end
end
