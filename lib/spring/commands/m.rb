module Spring
  module Commands
    class M
      def env(*)
        'test'
      end

      def exec_name
        'm'
      end
    end

    Spring.register_command 'm', M.new
    Spring::Commands::Rake.environment_matchers[/^m($|:)/] = 'test'
  end
end
