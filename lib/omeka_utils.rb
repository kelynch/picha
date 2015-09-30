require "omeka_client"

module OmekaUtils

  @omeka_site = OmekaConfig.config[:omeka_a11y][:url]
  @omeka_api_key = OmekaConfig.config[:omeka_a11y][:api_key]

  @client = OmekaClient::Client.new(@omeka_site, @omeka_api_key)

  def basic_asset_info(item_id)
    # Not much yet -- pulling in item identifer, more can be added
    asset_info_hash = Hash.new

    item = @client.get_item(item_id)
    asset_info_hash[:identifier] = item.data.id if item.data.public
    return asset_info_hash
  end
  module_function :basic_asset_info

end
