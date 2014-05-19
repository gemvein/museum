module Museum
  def self.configure(configuration = Museum::Configuration.new)
    if block_given?
      yield configuration
    end
    @@configuration = configuration
  end
  
  def self.configuration
    @@configuration ||= Museum::Configuration.new
  end
  
  class Configuration
    attr_accessor :username, :refresh_interval
    
    def initialize
      self.username = nil
      self.refresh_interval = 3600
    end
  end
end