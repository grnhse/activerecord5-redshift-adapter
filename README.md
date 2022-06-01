activerecord6-redshift-adapter
==============================

The clone path for this Repo is 
 - aamine/activerecord4-redshift-adapter
 - ConsultingMD/activerecord5-redshift-adapter
 - rapito/activerecord5-redshift-adapter

This provides a stable tag including changes that fixes Rails 5.2 migration issues.

**NOTE**: Neither Greenhouse Software nor its employees provide support for this Gem. It's provided As-Is to add a stable branch that fixes issue introduced in Rails 5.2. Greenhouse will not respond issues, and requests for features or PRs should be submitted to the source gem at https://github.com/ConsultingMD/activerecord5-redshift-adapter

-------------------------

*Original README.md continues from here.*
=======
Amazon Redshift adapter for ActiveRecord 6 (Rails 6.1).

I forked the project from https://github.com/kwent/activerecord6-redshift-adapter
This gem is compatible with Rails 6.1.3

### Issue resolved
On upstream repository while tried:

`require 'active_record/connection_adapters/redshift_adapter'`
This error were raised.
```shell
NameError (uninitialized constant ActiveRecord::ConnectionAdapters::AbstractAdapter::SchemaCreation)
Did you mean?  ActiveRecord::ConnectionAdapters::SchemaCreation
               ActiveRecord::SchemaMigration
```
In this gem I've resolved this issue

All thanks goes to upstream authors!

Usage
-------------------

For Rails 6, write following in Gemfile:

```ruby
gem 'activerecord6-redshift-adapter'
```

In database.yml

```YAML
development:
  adapter: redshift
  host: host
  port: port
  database: db
  username: user
  password: password
  encoding: utf8
```

OR your can use in URL
```ruby
class SomeModel < ApplicationRecord
  establish_connection('redshift://username:password@host/database')
end
```

License
---------

MIT license (same as ActiveRecord)
