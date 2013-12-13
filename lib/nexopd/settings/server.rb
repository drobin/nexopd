module Nexopd
  module Settings
    class Server
      attr_accessor :hostkey
      attr_accessor :port

      def initialize
        @hostkey = nil
        @port = 22
      end

      def validate
        raise ArgumentError, "No such file: #{hostkey}" unless File.exists?(hostkey)

        begin
          Integer(port)
        rescue ArgumentError
          raise ArgumentError, "invalid port: #{port}"
        end

        self
      end

      def self.from_file(path)
        server = Server.new

        eval(File.open(path).read, binding)
        server.validate

        server
      end
    end
  end
end
