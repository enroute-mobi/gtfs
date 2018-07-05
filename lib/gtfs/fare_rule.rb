module GTFS
  class FareRule
    include GTFS::Model

    has_attributes :fare_id, :route_id, :origin_id, :destination_id, :contains_id
    has_optional_attrs :route_id, :origin_id, :destination_id, :contains_id
    attr_accessor *attrs

    collection_name :fare_rules
    required_file false
    uses_filename 'fare_rules.txt'

    def self.parse_fare_rules(data, options={})
      return parse_models(data, options)
    end

    def self.generate_fare_rules(&block)
      generate_csv &block
    end
  end
end
