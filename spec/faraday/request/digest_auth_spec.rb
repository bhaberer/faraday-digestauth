# frozen_string_literal: true

require 'spec_helper'

context Faraday::Request::DigestAuth do
  let(:connection) do
    Faraday.new('http://api.example.org/') do |builder|
      builder.request :digest, 'USER', 'PASS'
      builder.adapter :net_http
    end
  end

  describe 'when the server does not return a 401' do
    it 'does nothing' do
      stub_request(:get, 'http://api.example.org/productions/1')
        .to_return(status: 500, body: 'Foo body')
      response = connection.get('/productions/1')
      expect(response.body).to eq 'Foo body'
    end
  end

  describe 'when the server returns a 401 without a digest authentication scheme' do
    let(:first_call_headers) { 'Basic realm="MyApp"' }
    let(:response) do
      stub_request(:get, 'http://api.example.org/productions/1')
        .with(body: nil)
        .to_return(status: 401, headers: { 'www-authenticate' => first_call_headers })
      connection.get('/productions/1')
    end

    it 'returns empty body' do
      expect(response.body).to be_empty
    end

    it 'returns 401' do
      expect(response.status).to eq 401
    end
  end

  describe 'when the server returns a 401 with a digest authentication scheme' do
    let(:first_call_headers) { 'Digest realm="MyApp", algorithm=MD5' }
    let(:second_call_headers) { 'Digest username="USER", realm="MyApp", uri="/", algorithm="MD5"' }
    let(:response) do
      stub_request(:get, 'http://api.example.org/productions/1')
        .with(body: nil)
        .to_return(status: 401, headers: { 'www-authenticate' => first_call_headers })
      stub_request(:get, 'http://api.example.org/productions/1')
        .with(body: '{"foo":1}',
              headers: { 'Authorization' => /second_call_headers/ })
        .to_return(body: '{"resource": "This is the resource"}',
                   headers: { content_type: 'application/json' })
      connection.get('/productions/1')
    end

    it 'authenticates using digest' do
      expect(response.body).to be_empty
    end
  end

  context 'when the username is nil' do
    let(:connection) do
      Faraday.new('http://api.example.org/') do |builder|
        builder.request :digest, nil, 'PASS'
        builder.adapter :net_http
      end
    end

    it 'raises ArgumentError during construction' do
      expect do
        connection.get('http://api.example.com')
      end.to raise_error(ArgumentError, /Username cannot be nil/)
    end
  end

  context 'when the password is nil' do
    let(:connection) do
      Faraday.new('http://api.example.org/') do |builder|
        builder.request :digest, 'USER', nil
        builder.adapter :net_http
      end
    end

    it 'raises ArgumentError during construction' do
      expect do
        connection.get('http://api.example.com')
      end.to raise_error(ArgumentError, /Password cannot be nil/)
    end
  end
end
