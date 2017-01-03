# frozen_string_literal: true

module NoSE
  module CLI
    # Add a command to list different types of classes available
    class NoSECLI < Thor
      desc 'list TYPE', 'list available objects of the given TYPE'

      AVAILABLE_TYPES = %w(backend cost).freeze

      long_desc <<-LONGDESC
        `nose list` shows available objects of different types.

        The following types are currently supported:
          #{AVAILABLE_TYPES.join ', '}
      LONGDESC

      def list(type)
        case type
        when 'backend'
          cls = Backend::Backend
        when 'cost'
          cls = Cost::Cost
        else
          fail Thor::UnknownArgumentError,
               "Invalid type. Available types are #{AVAILABLE_TYPES.join ', '}"
        end

        cls.subclasses.each_value { |c| puts c.subtype_name }
      end
    end
  end
end
