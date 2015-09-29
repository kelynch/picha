require 'omeka_config'
OmekaConfig.config = YAML.load_file("config/omeka.yml").symbolize_keys
