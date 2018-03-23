<Google::Apis::CalendarV3::CalendarService:0x007ff6026f5b80 
    @root_url="https://www.googleapis.com/", 
    @base_path="calendar/v3/", 
    @upload_path="upload/calendar/v3/", 
    @batch_path="batch/calendar/v3", 
    @client_options= <struct Google::Apis::ClientOptions 
        application_name="unknown", 
        application_version="0.0.0", 
        proxy_url=nil, 
        open_timeout_sec=nil, 
        read_timeout_sec=nil, 
        send_timeout_sec=nil, 
        log_http_requests=false, 
        transparent_gzip_decompression=true>, 
    @request_options= <struct Google::Apis::RequestOptions 
        authorization= <Signet::OAuth2::Client:0x007ff6030841b0 
            @authorization_uri= <Addressable::URI:0x3ffb018439ec URI:https://accounts.google.com/o/oauth2/auth>, 
            @token_credential_uri=<Addressable::URI:0x3ffb0137bb44 URI:https://accounts.google.com/o/oauth2/token>, 
            @client_id="673162500471-8fp6vg8d50p67q4cq3it8ik8eb2d886n.apps.googleusercontent.com", 
            @client_secret="icc0zHstYoUK_8dzKU1to2x1", 
            @code=nil, 
            @expires_at=nil, 
            @expires_in=3600, 
            @issued_at=2018-03-23 14:25:34 -0400, 
            @issuer=nil, 
            @password=nil, 
            @principal=nil, 
            @redirect_uri=<Addressable::URI:0x3ffb0137b5f4 URI:http://localhost:3000/callback>, 
            @scope=["https://www.googleapis.com/auth/calendar"], 
            @state=nil, @username=nil, 
            @expiry=60, 
            @extension_parameters={}, 
            @additional_parameters={:access_type=>"offline"}, 
            @access_token="ya29.GlyHBSm3wiK7y8AE-x5jKqHb8OTtdGY6pjsMbQYs9E0JGLNJtBopKlXtjsgn1cmbFFmj8b1p9pSlM9u5m0lr7Nn6eUsw-q8O3WrqqMS1RSGA7lZH_Z4NcjU7TkF04A">, 
        retries=0, 
        header=nil, 
        normalize_unicode=false, 
        skip_serialization=false, 
        skip_deserialization=false, 
        api_format_version=nil>, 
    @client= <HTTPClient:0x007ff6026f57c0 
        @proxy=nil, 
        @no_proxy=nil, 
        @no_proxy_regexps=[], 
        @base_url=nil, 
        @default_header={
            "User-Agent"=>"unknown/0.0.0 google-api-ruby-client/0.19.8 Mac OS X/10.13.3\n (gzip)"}, 
        @www_auth= <HTTPClient::WWWAuth:0x007ff6026f5518 
            @basic_auth= <HTTPClient::BasicAuth:0x007ff6026f54a0 
                @_mutex= <Thread::Mutex:0x007ff6026f53b0>, 
                @scheme="Basic", 
                @challenge={}, 
                @cred=nil, 
                @auth={}, 
                @force_auth=nil>, 
        @digest_auth= <HTTPClient::DigestAuth:0x007ff6026f5248 
            @_mutex= <Thread::Mutex:0x007ff6026f5180>, 
            @scheme="Digest", 
            @challenge={}, 
            @auth={}, 
            @nonce_count=0>, 
        @negotiate_auth= <HTTPClient::NegotiateAuth:0x007ff6026f5108 
            @_mutex= <Thread::Mutex:0x007ff6026f4ff0>, 
            @scheme="Negotiate", 
            @challenge={}, 
            @auth={}, 
            @auth_default=nil, 
            @ntlm_opt={:ntlmv2=>true}>, 
        @ntlm_auth= <HTTPClient::NegotiateAuth:0x007ff6026f4f28 
            @_mutex= <Thread::Mutex:0x007ff6026f4e60>, 
            @scheme="NTLM", 
            @challenge={}, 
            @auth={}, 
            @auth_default=nil, 
            @ntlm_opt={:ntlmv2=>true}>, 
        @sspi_negotiate_auth= <HTTPClient::SSPINegotiateAuth:0x007ff6026f4cf8 
            @_mutex= <Thread::Mutex:0x007ff6026f4a50>, 
            @scheme="Negotiate", 
            @challenge={}>, 
            @oauth= <HTTPClient::OAuth:0x007ff6026f49b0 
            @_mutex=#<Thread::Mutex:0x007ff6026f48c0>, 
            @scheme="OAuth", 
            @challenge={}, 
            @config=nil, 
            @auth={}, 
            @nonce_count=0, 
            @signature_handler={
                "HMAC-SHA1"=> 
                    <Method: HTTPClient::OAuth#sign_hmac_sha1>
            }
            >, 
            @authenticator=[
                <HTTPClient::OAuth:0x007ff6026f49b0 
                    @_mutex= <Thread::Mutex:0x007ff6026f48c0>, 
                    @scheme="OAuth", 
                    @challenge={}, 
                    @config=nil, 
                    @auth={}, 
                    @nonce_count=0, 
                    @signature_handler={
                        "HMAC-SHA1"=> <Method: HTTPClient::OAuth sign_hmac_sha1>
                     }>, 
                <HTTPClient::NegotiateAuth:0x007ff6026f5108 
                    @_mutex=<Thread::Mutex:0x007ff6026f4ff0>, 
                    @scheme="Negotiate", 
                    @challenge={}, 
                    @auth={}, 
                    @auth_default=nil, 
                    @ntlm_opt={:ntlmv2=>true}>, 
                <HTTPClient::NegotiateAuth:0x007ff6026f4f28 
                    @_mutex=<Thread::Mutex:0x007ff6026f4e60>, 
                    @scheme="NTLM", 
                    @challenge={}, 
                    @auth={}, 
                    @auth_default=nil, 
                    @ntlm_opt={:ntlmv2=>true}>, 
                <HTTPClient::SSPINegotiateAuth:0x007ff6026f4cf8 
                    @_mutex=<Thread::Mutex:0x007ff6026f4a50>, 
                    @scheme="Negotiate", @challenge={}>, 
                <HTTPClient::DigestAuth:0x007ff6026f5248 
                    @_mutex=<Thread::Mutex:0x007ff6026f5180>, 
                    @scheme="Digest", 
                    @challenge={}, 
                    @auth={}, 
                    @nonce_count=0>, 
                <HTTPClient::BasicAuth:0x007ff6026f54a0 
                    @_mutex= <Thread::Mutex:0x007ff6026f53b0>, 
                    @scheme="Basic", 
                    @challenge={}, 
                    @cred=nil, 
                    @auth={}, 
                    @force_auth=nil>
            ]
        >, 
        @proxy_auth= <HTTPClient::ProxyAuth:0x007ff6026f47d0 
            @basic_auth= <HTTPClient::ProxyBasicAuth:0x007ff6026f4758 
                @_mutex=<Thread::Mutex:0x007ff6026f46b8>, 
                @scheme="Basic", 
                @challenge={}, 
                @cred=nil, 
                @auth={}, 
                @force_auth=nil>, 
        @negotiate_auth= < HTTPClient::NegotiateAuth:0x007ff6026f45c8 
                        @_mutex=<Thread::Mutex:0x007ff6026f4230>, 
                        @scheme="Negotiate", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
            @ntlm_auth= <HTTPClient::NegotiateAuth:0x007ff6026f4050 
                            @_mutex=#<Thread::Mutex:0x007ff6026f49d8>, 
                            @scheme="NTLM", 
                            @challenge={}, 
                            @auth={}, 
                            @auth_default=nil, 
                            @ntlm_opt={:ntlmv2=>true}
                            >, 
            @sspi_negotiate_auth= <HTTPClient::SSPINegotiateAuth:0x007ff6026f5798 
                @_mutex=<Thread::Mutex:0x007ff6026f6fa8>, 
                @scheme="Negotiate", 
                @challenge={}>, 
            @digest_auth=<HTTPClient::ProxyDigestAuth:0x007ff6026f79a8 
                @_mutex=#<Thread::Mutex:0x007ff6026eff50>, 
                @scheme="Digest", 
                @challenge=nil, 
                @auth={}, 
                @nonce_count=0>, 
                @authenticator=[
                    <HTTPClient::NegotiateAuth:0x007ff6026f45c8 
                        @_mutex=#<Thread::Mutex:0x007ff6026f4230>, 
                        @scheme="Negotiate", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
                    <HTTPClient::NegotiateAuth:0x007ff6026f4050 
                        @_mutex=#<Thread::Mutex:0x007ff6026f49d8>, 
                        @scheme="NTLM", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
                    <HTTPClient::SSPINegotiateAuth:0x007ff6026f5798 
                        @_mutex=<Thread::Mutex:0x007ff6026f6fa8>, 
                        @scheme="Negotiate", 
                        @challenge={}>, 
                    <HTTPClient::ProxyDigestAuth:0x007ff6026f79a8 
                        @_mutex= <Thread::Mutex:0x007ff6026eff50>, 
                        @scheme="Digest", 
                        @challenge=nil, 
                        @auth={}, 
                        @nonce_count=0>, 
                    <HTTPClient::ProxyBasicAuth:0x007ff6026f4758 
                        @_mutex=#<Thread::Mutex:0x007ff6026f46b8>, 
                        @scheme="Basic", 
                        @challenge={}, 
                        @cred=nil, 
                        @auth={}, 
                        @force_auth=nil>
                ]
            >, 
        @request_filter=[ 
	        <HTTPClient::ProxyAuth:0x007ff6026f47d0 
	            @basic_auth= <HTTPClient::ProxyBasicAuth:0x007ff6026f4758 
	                @_mutex=#<Thread::Mutex:0x007ff6026f46b8>, 
	                @scheme="Basic", 
	                @challenge={}, 
	                @cred=nil, 
	                @auth={}, 
	                @force_auth=nil>, 
	            @negotiate_auth= <HTTPClient::NegotiateAuth:0x007ff6026f45c8 
	                @_mutex= <Thread::Mutex:0x007ff6026f4230>, 
	                @scheme="Negotiate", 
	                @challenge={}, 
	                @auth={}, 
	                @auth_default=nil, 
	                @ntlm_opt={:ntlmv2=>true}>, 
	            @ntlm_auth=#<HTTPClient::NegotiateAuth:0x007ff6026f4050 
	                @_mutex=#<Thread::Mutex:0x007ff6026f49d8>, 
	                @scheme="NTLM", 
	                @challenge={}, 
	                @auth={}, 
	                @auth_default=nil, 
	                @ntlm_opt={:ntlmv2=>true}>, 
	            @sspi_negotiate_auth= #<HTTPClient::SSPINegotiateAuth:0x007ff6026f5798 
	                @_mutex=#<Thread::Mutex:0x007ff6026f6fa8>, 
	                @scheme="Negotiate", 
	                @challenge={}>, 
	            @digest_auth= <HTTPClient::ProxyDigestAuth:0x007ff6026f79a8 
	                @_mutex=#<Thread::Mutex:0x007ff6026eff50>, 
	                @scheme="Digest", 
	                @challenge=nil, 
	                @auth={}, 
	                @nonce_count=0>, 
	            @authenticator=[
                    #<HTTPClient::NegotiateAuth:0x007ff6026f45c8 
                        @_mutex=#<Thread::Mutex:0x007ff6026f4230>, 
                        @scheme="Negotiate", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
                    #<HTTPClient::NegotiateAuth:0x007ff6026f4050 
                        @_mutex=#<Thread::Mutex:0x007ff6026f49d8>, 
                        @scheme="NTLM", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
                    <HTTPClient::SSPINegotiateAuth:0x007ff6026f5798 
                        @_mutex=#<Thread::Mutex:0x007ff6026f6fa8>, 
                        @scheme="Negotiate", @challenge={}>, 
                    <HTTPClient::ProxyDigestAuth:0x007ff6026f79a8 
                        @_mutex=#<Thread::Mutex:0x007ff6026eff50>, 
                        @scheme="Digest", 
                        @challenge=nil, 
                        @auth={}, 
                        @nonce_count=0>, 
                    <HTTPClient::ProxyBasicAuth:0x007ff6026f4758 
                        @_mutex=#<Thread::Mutex:0x007ff6026f46b8>, 
                        @scheme="Basic", 
                        @challenge={}, 
                        @cred=nil, 
                        @auth={}, 
                        @force_auth=nil>
                ]
            >, 
            <HTTPClient::WWWAuth:0x007ff6026f5518 
                @basic_auth=<HTTPClient::BasicAuth:0x007ff6026f54a0 
                    @_mutex=#<Thread::Mutex:0x007ff6026f53b0>, 
                    @scheme="Basic", 
                    @challenge={}, 
                    @cred=nil, @auth={}, 
                    @force_auth=nil>, 
                    @digest_auth=<HTTPClient::DigestAuth:0x007ff6026f5248 
                        @_mutex=#<Thread::Mutex:0x007ff6026f5180>, 
                        @scheme="Digest", 
                        @challenge={}, 
                        @auth={}, 
                        @nonce_count=0>, 
                    @negotiate_auth= <HTTPClient::NegotiateAuth:0x007ff6026f5108 
                        @_mutex=<Thread::Mutex:0x007ff6026f4ff0>, 
                        @scheme="Negotiate", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
                    @ntlm_auth=<HTTPClient::NegotiateAuth:0x007ff6026f4f28 
                        @_mutex=#<Thread::Mutex:0x007ff6026f4e60>, 
                        @scheme="NTLM", 
                        @challenge={}, 
                        @auth={}, 
                        @auth_default=nil, 
                        @ntlm_opt={:ntlmv2=>true}>, 
                    @sspi_negotiate_auth= <HTTPClient::SSPINegotiateAuth:0x007ff6026f4cf8 
                        @_mutex=#<Thread::Mutex:0x007ff6026f4a50>, 
                        @scheme="Negotiate", 
                        @challenge={}>, 
                    @oauth=<HTTPClient::OAuth:0x007ff6026f49b0 
                        @_mutex=#<Thread::Mutex:0x007ff6026f48c0>, 
                        @scheme="OAuth", 
                        @challenge={}, 
                        @config=nil, 
                        @auth={}, 
                        @nonce_count=0, 
                        @signature_handler={
                            "HMAC-SHA1"=> <Method: HTTPClient::OAuth sign_hmac_sha1>
                        }
                    >, 
	                @authenticator=[
	                    <HTTPClient::OAuth:0x007ff6026f49b0 
	                        @_mutex=#<Thread::Mutex:0x007ff6026f48c0>, 
	                        @scheme="OAuth", 
	                        @challenge={}, 
	                        @config=nil, 
	                        @auth={}, 
	                        @nonce_count=0, 
	                        @signature_handler={
	                            "HMAC-SHA1"=> 
	                                <Method: HTTPClient::OAuth sign_hmac_sha1>
	                        }
	                    >, 
	                    <HTTPClient::NegotiateAuth:0x007ff6026f5108 
	                        @_mutex= <Thread::Mutex:0x007ff6026f4ff0>, 
	                        @scheme="Negotiate", 
	                        @challenge={}, 
	                        @auth={}, 
	                        @auth_default=nil, 
	                        @ntlm_opt={:ntlmv2=>true}
	                    >, 
	                    <HTTPClient::NegotiateAuth:0x007ff6026f4f28 
	                        @_mutex=#<Thread::Mutex:0x007ff6026f4e60>, 
	                        @scheme="NTLM", 
	                        @challenge={}, 
	                        @auth={}, 
	                        @auth_default=nil, 
	                        @ntlm_opt={:ntlmv2=>true}
	                    >, 
	                    <HTTPClient::SSPINegotiateAuth:0x007ff6026f4cf8 
	                        @_mutex=#<Thread::Mutex:0x007ff6026f4a50>, 
	                        @scheme="Negotiate", @challenge={}>, 
	                    <HTTPClient::DigestAuth:0x007ff6026f5248 
	                        @_mutex=#<Thread::Mutex:0x007ff6026f5180>, 
	                        @scheme="Digest", 
	                        @challenge={}, 
	                        @auth={}, 
	                        @nonce_count=0>, 
	                    <HTTPClient::BasicAuth:0x007ff6026f54a0 
	                        @_mutex=#<Thread::Mutex:0x007ff6026f53b0>, 
	                        @scheme="Basic", 
	                        @challenge={}, 
	                        @cred=nil, 
	                        @auth={}, 
	                        @force_auth=nil
	                    >
	            ]
	        >
	    ], 
        @debug_dev=nil, 
        @redirect_uri_callback= 
            <Method: HTTPClient#default_redirect_uri_callback>, 
        @test_loopback_response=[], 
        @session_manager= <HTTPClient::SessionManager:0x007ff6026efe38 
        @client=#<HTTPClient:0x007ff6026f57c0 ...>, 
        @proxy=nil, 
        @agent_name="HTTPClient/1.0", 
        @from=nil, 
        @protocol_version=nil, 
        @debug_dev=nil, 
        @socket_sync=true, 
        @tcp_keepalive=false, 
        @chunk_size=16384, 
        @connect_timeout=60, 
        @connect_retry=1, 
        @send_timeout=120, 
        @receive_timeout=60, 
        @keep_alive_timeout=15, 
        @read_block_size=16384, 
        @protocol_retry_count=5, 
        @ssl_config= <HTTPClient::SSLConfig:0x007ff6026efb40 
            @client=<HTTPClient:0x007ff6026f57c0 ...>, 
            @cert_store=<OpenSSL::X509::Store:0x007ff6026efaf0 
                @verify_callback=nil, 
                @error=nil, 
                @error_string=nil, 
                @chain=nil, 
                @time=nil, 
                @_httpclient_cert_store_items=[:default, "/Users/doriscclin/.rvm/gems/ruby-2.4.1/gems/httpclient-2.8.3/lib/httpclient/cacert.pem"]
            >,                                                     
	        @cert_store_crl_items=[], 
	        @client_ca=nil, 
	        @client_key_pass=nil, 
	        @client_key=nil, 
	        @client_cert=nil,
	        @verify_mode=3, 
	        @verify_depth=nil, 
	        @verify_callback=nil, 
	        @dest=nil, 
	        @timeout=nil, 
	        @ssl_version=:auto, 
	        @options=2181169236, 
	        @ciphers="ALL:!aNULL:!eNULL:!SSLv2", 
	        @cacerts_loaded=true
	    >, 
	    @test_loopback_http_response=[], 
	    @transparent_gzip_decompression=true, 
	    @strict_response_size_check=false, 
	    @socket_local= <HTTPClient::Site:0x3ffb01377ecc tcp://0.0.0.0:0>, 
	    @sess_pool={ <HTTPClient::Site:0x3ffb01373304 https://www.googleapis.com:443> =>
	            [ 
	            	<HTTPClient::Session:0x007ff6026e7be8 
        @client=#<HTTPClient:0x007ff6026f57c0 ...>, 
        @dest=#<HTTPClient::Site:0x3ffb01373304 https://www.googleapis.com:443>, 
        @proxy=nil, 
        @socket_sync=true, 
        @tcp_keepalive=false, 
        @requested_version=nil, 
        @debug_dev=nil, 
        @connect_timeout=60, 
        @connect_retry=1, 
        @send_timeout=120, 
        @receive_timeout=60, 
        @read_block_size=16384, 
        @protocol_retry_count=5, 
        @ssl_config= <HTTPClient::SSLConfig:0x007ff6026efb40 
        @client=#<HTTPClient:0x007ff6026f57c0 ...>, 
        @cert_store= <OpenSSL::X509::Store:0x007ff6026efaf0 
            @verify_callback=nil, 
            @error=nil, 
            @error_string=nil, 
            @chain=nil, 
            @time=nil, 
            @_httpclient_cert_store_items=[:default, "/Users/doriscclin/.rvm/gems/ruby-2.4.1/gems/httpclient-2.8.3/lib/httpclient/cacert.pem"]
        >, 
        @cert_store_crl_items=[], 
        @client_ca=nil, 
        @client_key_pass=nil, 
        @client_key=nil, 
        @client_cert=nil, 
        @verify_mode=3, 
        @verify_depth=nil, 
        @verify_callback=nil, 
        @dest=nil, 
	                    @timeout=nil, 
	                    @ssl_version=:auto, 
	                    @options=2181169236, 
	                    @ciphers="ALL:!aNULL:!eNULL:!SSLv2", 
	                    @cacerts_loaded=true
	    >, 
            @ssl_peer_cert= < OpenSSL::X509::Certificate: 
                subject= <OpenSSL::X509::Name:0x007ff6027a73d0>, 
                issuer=<OpenSSL::X509::Name:0x007ff6027a73a8>, 
                serial=<OpenSSL::BN:0x007ff6027a7380>, 
                not_before=2018-03-07 19:54:27 UTC, not_after=2018-05-30 18:53:00 UTC
                >, 
            @test_loopback_http_response=[], 
            @strict_response_size_check=false, 
            @socket_local= <HTTPClient::Site:0x3ffb01377ecc tcp://0.0.0.0:0>, 
            @agent_name="HTTPClient/1.0", 
            @from=nil, 
            @state=:WAIT, 
            @requests=[], 
            @status=200, 
            @reason="OK", 
            @headers=[["Expires", "Fri, 23 Mar 2018 18:25:35 GMT"], ["Date", "Fri, 23 Mar 2018 18:25:35 GMT"], ["Cache-Control", "private, max-age=0, must-revalidate, no-transform"], ["Vary", "Origin"], ["Vary", "X-Origin"], ["Content-Type", "application/json; charset=UTF-8"], ["Content-Encoding", "gzip"], ["X-Content-Type-Options", "nosniff"], ["X-Frame-Options", "SAMEORIGIN"], ["X-XSS-Protection", "1; mode=block"], ["Server", "GSE"], ["Alt-Svc", "hq=\":443\"; ma=2592000; quic=51303432; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"42,41,39,35\""], ["Transfer-Encoding", "chunked"]], @socket=#<HTTPClient::SSLSocket:0x007ff6026df768 @socket=#<TCPSocket:fd 36>, @config=#<HTTPClient::SSLConfig:0x007ff6026efb40 @client=#<HTTPClient:0x007ff6026f57c0 ...>, @cert_store=#<OpenSSL::X509::Store:0x007ff6026efaf0 @verify_callback=nil, @error=nil, @error_string=nil, @chain=nil, @time=nil, @_httpclient_cert_store_items=[:default, "/Users/doriscclin/.rvm/gems/ruby-2.4.1/gems/httpclient-2.8.3/lib/httpclient/cacert.pem"]>, @cert_store_crl_items=[], @client_ca=nil, @client_key_pass=nil, @client_key=nil, @client_cert=nil, @verify_mode=3, @verify_depth=nil, @verify_callback=nil, @dest=nil, @timeout=nil, @ssl_version=:auto, @options=2181169236, @ciphers="ALL:!aNULL:!eNULL:!SSLv2", @cacerts_loaded=true>, @ssl_socket=#<OpenSSL::SSL::SSLSocket:0x007ff6026df380 @context=#<OpenSSL::SSL::SSLContext:0x007ff6026df6f0 @cert_store=#<OpenSSL::X509::Store:0x007ff6026efaf0 @verify_callback=nil, @error=nil, @error_string=nil, @chain=nil, @time=nil, @_httpclient_cert_store_items=[:default, "/Users/doriscclin/.rvm/gems/ruby-2.4.1/gems/httpclient-2.8.3/lib/httpclient/cacert.pem"]>, @verify_mode=3, @verify_callback=#<Method: HTTPClient::SSLConfig#default_verify_callback>, @client_ca=nil, @timeout=nil>, @io=#<TCPSocket:fd 36>, @eof=false, @rbuffer="", @sync=true, @hostname="www.googleapis.com", @wbuffer="">, @debug_dev=nil>, @readbuf=nil, @transparent_gzip_decompression=true, @last_used=2018-03-23 14:25:34 -0400, @next_connection=true, @content_length=0, @chunked=true, @content_encoding="gzip", @chunk_length=0, @version="1.1">]}, @sess_pool_mutex=#<Thread::Mutex:0x007ff6026efbe0>, @sess_pool_last_checked=2018-03-23 14:25:34 -0400>, @ssl_config=#<HTTPClient::SSLConfig:0x007ff6026efb40 @client=#<HTTPClient:0x007ff6026f57c0 ...>, @cert_store=#<OpenSSL::X509::Store:0x007ff6026efaf0 @verify_callback=nil, @error=nil, @error_string=nil, @chain=nil, @time=nil, @_httpclient_cert_store_items=[:default, "/Users/doriscclin/.rvm/gems/ruby-2.4.1/gems/httpclient-2.8.3/lib/httpclient/cacert.pem"]>, @cert_store_crl_items=[], @client_ca=nil, @client_key_pass=nil, @client_key=nil, @client_cert=nil, @verify_mode=3, @verify_depth=nil, @verify_callback=nil, @dest=nil, @timeout=nil, @ssl_version=:auto, @options=2181169236, @ciphers="ALL:!aNULL:!eNULL:!SSLv2", @cacerts_loaded=true>, @cookie_manager=#<WebAgent::CookieManager:0x007ff6026ef938 @cookies=[], @cookies_file=nil, @is_saved=true, @reject_domains=[], @accept_domains=[], @netscape_rule=false>, @follow_redirect_count=5>>














