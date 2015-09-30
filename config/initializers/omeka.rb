require 'omeka_config'

OmekaConfig.config = HashWithIndifferentAccess.new(YAML.load_file("config/omeka_sites_info.yml"))
