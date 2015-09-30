require "omeka_client"

module OmekaUtils

  def basic_asset_info(omeka_site_alias, item_id)
    # Not much yet -- pulling in item identifer, more can be added
    asset_info_hash = Hash.new
    client = make_client(omeka_site_alias)
    item = client.get_item(item_id)
    asset_info_hash[:identifier] = item.data.id if item.data.public
    return asset_info_hash
  end
  module_function :basic_asset_info

  protected
  def self.make_client(omeka_site_alias)
    omeka_site = OmekaConfig.config[omeka_site_alias.to_sym][:url]
    omeka_api_key = OmekaConfig.config[omeka_site_alias.to_sym][:api_key]
    client = OmekaClient::Client.new(omeka_site, omeka_api_key)
    client
  end

end
