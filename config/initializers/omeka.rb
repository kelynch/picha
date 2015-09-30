require 'omeka_config'
#OmekaConfig.config = YAML.load_file("config/omeka_sites_info.yml").with_indifferent_access.symbolize_key


OmekaConfig.config = HashWithIndifferentAccess.new(YAML.load_file("config/omeka_sites_info.yml"))
