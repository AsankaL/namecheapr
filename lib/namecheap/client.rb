module Namecheap
  class Client
    attr_reader :environment, :username, :key, :client_ip

    def initialize(options = {})
      #config = YAML.load_file("#{File.dirname(__FILE__)}/config.yml")
      
      config = YAML.load_file(File.join(Rails.root, "config/namecheap.yml"))[Rails.env] rescue nil
      config ||= YAML.load_file(File.join(File.dirname(__FILE__), "../generators/templates/namecheap.yml"))[Rails.env] rescue nil
      config.symbolize_keys! if (config)
      
      @environment = options[:environment] || config[:environment]
      @key = options[:key] || config[:key]
      @username = options[:username] || config[:username]
      @client_ip = options[:client_ip] || config[:client_ip]
    end

    def is_domain_available?(domain)
      results = domain_check(domain).items
      results.nil? ? false : results.first.available?
    end

    def domain_check(domain)
      domain = domain.join(",") if domain.is_a? Array
      Namecheap::DomainCheckResponse.new(do_query("namecheap.domains.check", "&DomainList=#{domain}"))
    end

    protected
    def api_url
      return case @environment.to_sym
        when :sandbox     then "https://api.sandbox.namecheap.com"
        when :production  then "https://api.namecheap.com"
        else
          "https://api.sandbox.namecheap.com"
      end
    end
    
    def do_query(api_method, options)
      query = "#{api_url}/xml.response?ApiUser=#{@username}&ApiKey=#{@key}&UserName=#{@username}&ClientIp=#{@client_ip}&Command=#{api_method}"
      query += options
      HTTParty.get(query)
    end

  end
end