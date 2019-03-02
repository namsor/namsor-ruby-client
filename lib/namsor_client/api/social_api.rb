=begin
#NamSor API v2

#NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 

OpenAPI spec version: 2.0.2-beta
Contact: contact@namsor.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'uri'

module NamSorClient
  class SocialApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # [USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
    # @param first_name 
    # @param last_name 
    # @param phone_number 
    # @param [Hash] opts the optional parameters
    # @return [FirstLastNamePhoneCodedOut]
    def phone_code(first_name, last_name, phone_number, opts = {})
      data, _status_code, _headers = phone_code_with_http_info(first_name, last_name, phone_number, opts)
      data
    end

    # [USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
    # @param first_name 
    # @param last_name 
    # @param phone_number 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FirstLastNamePhoneCodedOut, Fixnum, Hash)>] FirstLastNamePhoneCodedOut data, response status code and response headers
    def phone_code_with_http_info(first_name, last_name, phone_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SocialApi.phone_code ...'
      end
      # verify the required parameter 'first_name' is set
      if @api_client.config.client_side_validation && first_name.nil?
        fail ArgumentError, "Missing the required parameter 'first_name' when calling SocialApi.phone_code"
      end
      # verify the required parameter 'last_name' is set
      if @api_client.config.client_side_validation && last_name.nil?
        fail ArgumentError, "Missing the required parameter 'last_name' when calling SocialApi.phone_code"
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling SocialApi.phone_code"
      end
      # resource path
      local_var_path = '/api2/json/phoneCode/{firstName}/{lastName}/{phoneNumber}'.sub('{' + 'firstName' + '}', first_name.to_s).sub('{' + 'lastName' + '}', last_name.to_s).sub('{' + 'phoneNumber' + '}', phone_number.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FirstLastNamePhoneCodedOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SocialApi#phone_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchFirstLastNamePhoneNumberIn] :batch_first_last_name_phone_number_in A list of personal names
    # @return [BatchFirstLastNamePhoneCodedOut]
    def phone_code_batch(opts = {})
      data, _status_code, _headers = phone_code_batch_with_http_info(opts)
      data
    end

    # [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
    # @param [Hash] opts the optional parameters
    # @option opts [BatchFirstLastNamePhoneNumberIn] :batch_first_last_name_phone_number_in A list of personal names
    # @return [Array<(BatchFirstLastNamePhoneCodedOut, Fixnum, Hash)>] BatchFirstLastNamePhoneCodedOut data, response status code and response headers
    def phone_code_batch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SocialApi.phone_code_batch ...'
      end
      # resource path
      local_var_path = '/api2/json/phoneCodeBatch'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'batch_first_last_name_phone_number_in'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchFirstLastNamePhoneCodedOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SocialApi#phone_code_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # [USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
    # @param first_name 
    # @param last_name 
    # @param phone_number 
    # @param country_iso2 
    # @param [Hash] opts the optional parameters
    # @return [FirstLastNamePhoneCodedOut]
    def phone_code_geo(first_name, last_name, phone_number, country_iso2, opts = {})
      data, _status_code, _headers = phone_code_geo_with_http_info(first_name, last_name, phone_number, country_iso2, opts)
      data
    end

    # [USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
    # @param first_name 
    # @param last_name 
    # @param phone_number 
    # @param country_iso2 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FirstLastNamePhoneCodedOut, Fixnum, Hash)>] FirstLastNamePhoneCodedOut data, response status code and response headers
    def phone_code_geo_with_http_info(first_name, last_name, phone_number, country_iso2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SocialApi.phone_code_geo ...'
      end
      # verify the required parameter 'first_name' is set
      if @api_client.config.client_side_validation && first_name.nil?
        fail ArgumentError, "Missing the required parameter 'first_name' when calling SocialApi.phone_code_geo"
      end
      # verify the required parameter 'last_name' is set
      if @api_client.config.client_side_validation && last_name.nil?
        fail ArgumentError, "Missing the required parameter 'last_name' when calling SocialApi.phone_code_geo"
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling SocialApi.phone_code_geo"
      end
      # verify the required parameter 'country_iso2' is set
      if @api_client.config.client_side_validation && country_iso2.nil?
        fail ArgumentError, "Missing the required parameter 'country_iso2' when calling SocialApi.phone_code_geo"
      end
      # resource path
      local_var_path = '/api2/json/phoneCodeGeo/{firstName}/{lastName}/{phoneNumber}/{countryIso2}'.sub('{' + 'firstName' + '}', first_name.to_s).sub('{' + 'lastName' + '}', last_name.to_s).sub('{' + 'phoneNumber' + '}', phone_number.to_s).sub('{' + 'countryIso2' + '}', country_iso2.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FirstLastNamePhoneCodedOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SocialApi#phone_code_geo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, with a local context (ISO2 country of residence).
    # @param [Hash] opts the optional parameters
    # @option opts [BatchFirstLastNamePhoneNumberGeoIn] :batch_first_last_name_phone_number_geo_in A list of personal names
    # @return [BatchFirstLastNamePhoneCodedOut]
    def phone_code_geo_batch(opts = {})
      data, _status_code, _headers = phone_code_geo_batch_with_http_info(opts)
      data
    end

    # [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, with a local context (ISO2 country of residence).
    # @param [Hash] opts the optional parameters
    # @option opts [BatchFirstLastNamePhoneNumberGeoIn] :batch_first_last_name_phone_number_geo_in A list of personal names
    # @return [Array<(BatchFirstLastNamePhoneCodedOut, Fixnum, Hash)>] BatchFirstLastNamePhoneCodedOut data, response status code and response headers
    def phone_code_geo_batch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SocialApi.phone_code_geo_batch ...'
      end
      # resource path
      local_var_path = '/api2/json/phoneCodeGeoBatch'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'batch_first_last_name_phone_number_geo_in'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchFirstLastNamePhoneCodedOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SocialApi#phone_code_geo_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
