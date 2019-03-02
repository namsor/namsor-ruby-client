=begin
#NamSor API v2

#NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 

OpenAPI spec version: 2.0.2-beta
Contact: contact@namsor.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'date'

module NamSorClient
  # Simple metrics on source, with details by classifier.
  class SourceDetailedMetricsOut
    attr_accessor :classifier_name

    attr_accessor :source

    attr_accessor :ai_estimate_total

    attr_accessor :ai_estimate_precision

    attr_accessor :ai_estimate_recall

    attr_accessor :metric_time_stamp

    attr_accessor :ai_start_time

    attr_accessor :ai_learn_total

    attr_accessor :snapshot_date

    attr_accessor :expected_class_metrics

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'classifier_name' => :'classifierName',
        :'source' => :'source',
        :'ai_estimate_total' => :'aiEstimateTotal',
        :'ai_estimate_precision' => :'aiEstimatePrecision',
        :'ai_estimate_recall' => :'aiEstimateRecall',
        :'metric_time_stamp' => :'metricTimeStamp',
        :'ai_start_time' => :'aiStartTime',
        :'ai_learn_total' => :'aiLearnTotal',
        :'snapshot_date' => :'snapshotDate',
        :'expected_class_metrics' => :'expectedClassMetrics'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'classifier_name' => :'String',
        :'source' => :'APIKeyOut',
        :'ai_estimate_total' => :'Integer',
        :'ai_estimate_precision' => :'Float',
        :'ai_estimate_recall' => :'Float',
        :'metric_time_stamp' => :'Integer',
        :'ai_start_time' => :'Integer',
        :'ai_learn_total' => :'Integer',
        :'snapshot_date' => :'Integer',
        :'expected_class_metrics' => :'Array<ExpectedClassMetricsOut>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NamSorClient::SourceDetailedMetricsOut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NamSorClient::SourceDetailedMetricsOut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'classifier_name')
        self.classifier_name = attributes[:'classifier_name']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'ai_estimate_total')
        self.ai_estimate_total = attributes[:'ai_estimate_total']
      end

      if attributes.key?(:'ai_estimate_precision')
        self.ai_estimate_precision = attributes[:'ai_estimate_precision']
      end

      if attributes.key?(:'ai_estimate_recall')
        self.ai_estimate_recall = attributes[:'ai_estimate_recall']
      end

      if attributes.key?(:'metric_time_stamp')
        self.metric_time_stamp = attributes[:'metric_time_stamp']
      end

      if attributes.key?(:'ai_start_time')
        self.ai_start_time = attributes[:'ai_start_time']
      end

      if attributes.key?(:'ai_learn_total')
        self.ai_learn_total = attributes[:'ai_learn_total']
      end

      if attributes.key?(:'snapshot_date')
        self.snapshot_date = attributes[:'snapshot_date']
      end

      if attributes.key?(:'expected_class_metrics')
        if (value = attributes[:'expected_class_metrics']).is_a?(Array)
          self.expected_class_metrics = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          classifier_name == o.classifier_name &&
          source == o.source &&
          ai_estimate_total == o.ai_estimate_total &&
          ai_estimate_precision == o.ai_estimate_precision &&
          ai_estimate_recall == o.ai_estimate_recall &&
          metric_time_stamp == o.metric_time_stamp &&
          ai_start_time == o.ai_start_time &&
          ai_learn_total == o.ai_learn_total &&
          snapshot_date == o.snapshot_date &&
          expected_class_metrics == o.expected_class_metrics
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [classifier_name, source, ai_estimate_total, ai_estimate_precision, ai_estimate_recall, metric_time_stamp, ai_start_time, ai_learn_total, snapshot_date, expected_class_metrics].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        NamSorClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
