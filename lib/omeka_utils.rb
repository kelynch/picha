require "omeka_client"
require "omeka_utils"

module OmekaUtils

  def basic_asset_info(omeka_site_alias, item_id)
    # Not much yet -- pulling in item identifer, more can be added
    asset_info_hash = Hash.new
    client = make_client(omeka_site_alias)
    item = client.get_item(item_id)
    if item.data.public
      asset_info_hash[:identifier] = item_id
      asset_info_hash[:image_url] = get_image_url(client, item_id)
    end
    return asset_info_hash
  end
  module_function :basic_asset_info

  protected
  def self.make_client(omeka_site_alias)

    omeka_site = OmekaConfig.config[omeka_site_alias][:url]
    omeka_api_key = OmekaConfig.config[omeka_site_alias][:api_key]
    client = OmekaClient::Client.new(omeka_site, omeka_api_key)
    client
  end

  protected
  def self.get_image_url(client, item_id)
     return client.get_all_files({"item" => item_id})[0].data.file_urls.general
     
  end
end
