require 'spec_helper'

describe Faraday::Request::DigestAuth do

  # This doesn't do anything yet.
  it 'should allow users to build faraday objects with digest creds' do
    @conn = Faraday.new(url: 'http://localhost/') do |f|
              f.request(:digest, :username, :password)
              f.adapter Faraday.default_adapter
            end

  end
end
