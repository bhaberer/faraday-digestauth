# -*- coding: utf-8 -*-
module Faraday
  module DigestAuth
    # Connection methods
    module Connection
      # Public: Adds the digest auth middleware at the top and sets the user and
      # password.
      #
      # user     - A String with the user.
      # password - A String with the password.
      #
      def digest_auth(user, password)
        builder.insert(0, Faraday::Request::DigestAuth, user, password)
      end
    end
  end
end

Faraday::Connection.send :include, Faraday::DigestAuth::Connection
