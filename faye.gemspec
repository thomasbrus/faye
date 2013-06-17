Gem::Specification.new do |s|
  s.name              = 'faye'
  s.version           = '1.0.0'
  s.summary           = 'Simple pub/sub messaging for the web'
  s.author            = 'James Coglan'
  s.email             = 'jcoglan@gmail.com'
  s.homepage          = 'http://faye.jcoglan.com'

  s.extra_rdoc_files  = %w[README.rdoc]
  s.rdoc_options      = %w[--main README.rdoc]
  s.require_paths     = %w[lib]

  # It is important that the JavaScript files listed here are not removed: they
  # contain the browser client and the gem should fail to build without them.
  # You should generate them by running `npm run-script build` in the project
  # root.
  s.files = %w[History.txt README.rdoc] + Dir.glob('{spec,lib}/**/*')
  
  s.add_dependency 'cookiejar', '>= 0.3.0'
  s.add_dependency 'em-http-request', '>= 0.3.0'
  s.add_dependency 'eventmachine', '>= 0.12.0'
  s.add_dependency 'faye-websocket', '>= 0.6.0'
  s.add_dependency 'multi_json', '>= 1.0.0'
  s.add_dependency 'rack', '>= 1.0.0'

  s.add_development_dependency 'compass', '~> 0.10.0'
  s.add_development_dependency 'haml', '~> 3.1.0'
  s.add_development_dependency 'puma', '>= 2.0.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rack-proxy'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'RedCloth', '~> 3.0.0'
  s.add_development_dependency 'sinatra'
  s.add_development_dependency 'staticmatic'
  s.add_development_dependency 'testswarm-client'

  jruby = RUBY_PLATFORM =~ /java/
  rbx   = defined?(RUBY_ENGINE) && RUBY_ENGINE =~ /rbx/

  unless jruby
    s.add_development_dependency 'rainbows', '~> 4.4.0'
    s.add_development_dependency 'thin', '>= 1.2.0'
  end

  unless rbx or RUBY_VERSION < '1.9'
    s.add_development_dependency 'goliath'
  end

  unless jruby or rbx
    s.add_development_dependency 'passenger', '>= 4.0.0'
  end
end

