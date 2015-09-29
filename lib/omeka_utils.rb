require "omeka_client"

module OmekaUtils

  @omeka_site = OmekaConfig.config[:omeka_site]
  @omeka_api_key = OmekaConfig.config[:omeka_api_key]

  @client = OmekaClient::Client.new(@omeka_site, @omeka_api_key)

  def basic_asset_info()
    binding.pry()
  end
  module_function :basic_asset_info

end
