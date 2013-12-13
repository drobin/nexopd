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
    end
  end
end
