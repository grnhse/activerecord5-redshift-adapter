Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'activerecord5-redshift-adapter'
  s.version = '2.0.1'
  s.summary = 'Amazon Redshift adapter for ActiveRecord '
  s.description = 'Amazon Redshift adapter for ActiveRecord 6.x.'
  s.license = 'MIT'

  s.author = ['Nancy Foen', 'Minero Aoki', 'iamdbc', 'Quentin Rousseau', 'Tom Phillips']
  s.email = 'n/a'
  s.homepage = 'https://github.com/grnhse/activerecord5-redshift-adapter'

  s.files = Dir.glob(['LICENSE', 'README.md', 'lib/**/*.rb'])
  s.require_path = 'lib'

  s.required_ruby_version = '>= 2.2.2'
  s.add_runtime_dependency 'pg', '~> 1.0'
  s.add_runtime_dependency 'activerecord', '~> 6.0'
end
