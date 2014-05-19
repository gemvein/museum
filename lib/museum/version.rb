module Museum
  VERSION = File.read(File.expand_path('../../../VERSION', __FILE__))
  
  def self.version_string
    "Museum version #{Museum::VERSION}"
  end
end
