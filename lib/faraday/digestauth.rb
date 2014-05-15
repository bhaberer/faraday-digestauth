# -*- coding: utf-8 -*-
require 'net/http/digest_auth'
require 'faraday'
require 'faraday/digestauth/version'
require 'faraday/connection'
require 'faraday/request/digestauth'

# Register the middleware as a Request middleware with the name :digest
Faraday.register_middleware :request, digest: Faraday::Request::DigestAuth
