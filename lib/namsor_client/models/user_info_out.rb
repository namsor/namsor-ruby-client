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
  class UserInfoOut
    attr_accessor :uid

    attr_accessor :email

    attr_accessor :phone_number

    attr_accessor :email_verified

    attr_accessor :display_name

    attr_accessor :photo_url

    attr_accessor :disabled

    attr_accessor :first_known_ip_address

    attr_accessor :provider_id

    attr_accessor :time_stamp

    attr_accessor :verify_token

    attr_accessor :api_key

    attr_accessor :stripe_perishable_key

    attr_accessor :stripe_customer_id

    attr_accessor :other_infos

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'uid' => :'uid',
        :'email' => :'email',
        :'phone_number' => :'phoneNumber',
        :'email_verified' => :'emailVerified',
        :'display_name' => :'displayName',
        :'photo_url' => :'photoUrl',
        :'disabled' => :'disabled',
        :'first_known_ip_address' => :'firstKnownIpAddress',
        :'provider_id' => :'providerId',
        :'time_stamp' => :'timeStamp',
        :'verify_token' => :'verifyToken',
        :'api_key' => :'apiKey',
        :'stripe_perishable_key' => :'stripePerishableKey',
        :'stripe_customer_id' => :'stripeCustomerId',
        :'other_infos' => :'otherInfos'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'uid' => :'String',
        :'email' => :'String',
        :'phone_number' => :'String',
        :'email_verified' => :'BOOLEAN',
        :'display_name' => :'String',
        :'photo_url' => :'String',
        :'disabled' => :'BOOLEAN',
        :'first_known_ip_address' => :'String',
        :'provider_id' => :'String',
        :'time_stamp' => :'Integer',
        :'verify_token' => :'String',
        :'api_key' => :'String',
        :'stripe_perishable_key' => :'String',
        :'stripe_customer_id' => :'String',
        :'other_infos' => :'Array<UserInfoOut>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NamSorClient::UserInfoOut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NamSorClient::UserInfoOut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'uid')
        self.uid = attributes[:'uid']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'email_verified')
        self.email_verified = attributes[:'email_verified']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'photo_url')
        self.photo_url = attributes[:'photo_url']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.key?(:'first_known_ip_address')
        self.first_known_ip_address = attributes[:'first_known_ip_address']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      end

      if attributes.key?(:'time_stamp')
        self.time_stamp = attributes[:'time_stamp']
      end

      if attributes.key?(:'verify_token')
        self.verify_token = attributes[:'verify_token']
      end

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'stripe_perishable_key')
        self.stripe_perishable_key = attributes[:'stripe_perishable_key']
      end

      if attributes.key?(:'stripe_customer_id')
        self.stripe_customer_id = attributes[:'stripe_customer_id']
      end

      if attributes.key?(:'other_infos')
        if (value = attributes[:'other_infos']).is_a?(Array)
          self.other_infos = value
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
          uid == o.uid &&
          email == o.email &&
          phone_number == o.phone_number &&
          email_verified == o.email_verified &&
          display_name == o.display_name &&
          photo_url == o.photo_url &&
          disabled == o.disabled &&
          first_known_ip_address == o.first_known_ip_address &&
          provider_id == o.provider_id &&
          time_stamp == o.time_stamp &&
          verify_token == o.verify_token &&
          api_key == o.api_key &&
          stripe_perishable_key == o.stripe_perishable_key &&
          stripe_customer_id == o.stripe_customer_id &&
          other_infos == o.other_infos
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uid, email, phone_number, email_verified, display_name, photo_url, disabled, first_known_ip_address, provider_id, time_stamp, verify_token, api_key, stripe_perishable_key, stripe_customer_id, other_infos].hash
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
