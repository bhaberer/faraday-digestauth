# -*- coding: utf-8 -*-
require 'net/http/digest_auth'
require 'faraday'
require 'faraday/digestauth/version'
require 'faraday/digestauth/connection'
require 'faraday/request/digestauth'

# Register the middleware as a Request middleware with the name :digest
if Faraday.respond_to?(:register_middleware)                 # Faraday 0.8
  Faraday.register_middleware :request, digest: Faraday::Request::DigestAuth
elsif Faraday::Request.respond_to?(:register_middleware)     # Faraday 0.9
  Faraday::Request.register_middleware digest: Faraday::Request::DigestAuth
elsif Faraday::Request.respond_to?(:register_lookup_modules) # Faraday 0.7
  Faraday::Request.register_lookup_modules digest: :DigestAuth
end
