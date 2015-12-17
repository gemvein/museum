module Museum
  class Case < ActiveRecord::Base
    validates_presence_of :name

    has_many :case_details, class_name: 'Museum::CaseDetail', foreign_key: :museum_case_id

    after_create :freshen
    after_update :freshen_if_expired

    def freshen_if_expired
      if expired?
        freshen
      else
        self
      end
    end

    def expired?
      updated_at < (Time.now - Museum.configuration.refresh_interval).to_datetime
    end

    def freshen
      for lens in Museum::Loupe.all
        # puts lens.magnify(self).inspect
        lens.magnify(self).each do |key, value|
          case_details.update_or_create_by( {museum_loupe_id: lens.id, key: key}, {value: value.to_s} )
        end
      end
      unless new_record?
        touch
        reload
      else
        self
      end
    end

    def to_param
      name
    end

    def loupe(slug)
      case_details.find_all_by_loupe_slug(slug)
    end
  end
end
