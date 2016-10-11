module Museum
  class CaseDetail < ::ApplicationRecord
    validates_presence_of :key, :case, :loupe

    belongs_to :case, class_name: 'Museum::Case', foreign_key: :museum_case_id
    belongs_to :loupe, class_name: 'Museum::Loupe', foreign_key: :museum_loupe_id

    def self.update_or_create_by(args, attributes)
      self.find_or_create_by(args).update(attributes)
    end

    def self.find_all_by_loupe_slug(slug)
      where(museum_loupe_id: Loupe.id_by_slug(slug))
    end

    def self.detail(key)
      detail = find_by_key(key)
      if detail.nil?
        raise 'Could not find ' + key
      else
        detail.value
      end
    end

    def self.follow(key)
      detail(key).fetch('Accept' => 'application/vnd.github.html')
    end
  end
end
