module Museum
  class Loupe < ActiveRecord::Base
    extend ::FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title

    def self.id_by_slug(name)
      ( find_by_slug(name) || abort(name) ).id
    end

    def magnify(gem)
      parse_as(data_format, response(gem))
    end

    def url(gem)
      uri_template % { :name => gem.name, :user => Museum.configuration.username }
    end

    def response(gem)
      url(gem).fetch
    end

    def parse_as(format, string)
      begin
        case format
          when 'json'
            JSON.parse string.to_s
          when 'yaml'
            YAML.parse string.to_s
          when 'xml'
            Hash.from_xml(string.to_s)
        end
      rescue
        {}
      end
    end
  end
end