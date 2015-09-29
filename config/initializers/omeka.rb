require 'omeka_config'
OmekaConfig.config = YAML.load_file("config/omeka_sites_info.yml").symbolize_keys
