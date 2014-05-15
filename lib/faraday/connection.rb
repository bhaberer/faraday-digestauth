# -*- coding: utf-8 -*-
module Faraday
  class Connection
    # Public: Adds the digest auth middleware at the top and sets the user and
    # password.
    #
    # user     - A String with the user.
    # password - A String with the password.
    #
    def digest_auth(user, password)
      self.builder.insert(0, Faraday::Request::DigestAuth, user, password)
    end
  end
end
