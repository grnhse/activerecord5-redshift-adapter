# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    module Redshift
      class SchemaCreation < AbstractAdapter::SchemaCreation
        private

        def visit_ColumnDefinition(o)
          o.sql_type = type_to_sql(o.type, limit: o.limit, precision: o.precision, scale: o.scale)
          super
        end

        def add_column_options!(sql, options)
          column = options.fetch(:column) { return super }
          if column.type == :uuid && options[:default] =~ /\(\)/
            sql << " DEFAULT #{options[:default]}"
          else
            super
          end
        end
      end
    end
  end
end
