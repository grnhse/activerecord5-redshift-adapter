Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'activerecord5-redshift-adapter'
  s.version = '1.0.4.3'
  s.summary = 'Amazon Redshift adapter for ActiveRecord '
  s.description = 'Amazon Redshift _makeshift_ adapter for ActiveRecord 5.'
  s.license = 'MIT'

  s.author = ['Nancy Foen', 'Minero Aoki']
  s.email = ''
  s.homepage = 'https://github.com/grnhse/activerecord5-redshift-adapter'

  s.files = Dir.glob(['LICENSE', 'README.md', 'lib/**/*.rb'])
  s.require_path = 'lib'

  s.required_ruby_version = '>= 2.2.2'
  s.add_dependency 'pg', ['>= 0.18']
  s.add_dependency 'activerecord', ['~> 5.0']
end
