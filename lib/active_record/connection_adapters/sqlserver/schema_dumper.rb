module ActiveRecord
  module ConnectionAdapters
    module SQLServer
      module SchemaDumper

        private

        def explicit_primary_key_default?(column)
          column.is_primary? && !column.is_identity?
        end

        def schema_collation(column)
          return unless column.collation
          column.collation if column.collation != collation
        end

        def default_primary_key?(column)
          super && column.is_primary? && column.is_identity?
        end

      end
    end
  end
end
