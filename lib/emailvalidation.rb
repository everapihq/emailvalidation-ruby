# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative "emailvalidation/version"
require_relative "emailvalidation/endpoints"
require_relative "emailvalidation/configuration"

module Emailvalidation
  BASE_URL = 'https://api.emailvalidation.io/v1/'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= emailvalidation::Configuration.new
    yield(configuration)
  end
end
