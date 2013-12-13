require "nexopd/settings/server"
require "nexopd/settings/session"

module Nexopd
  module Settings
    def self.from_file(path)
      server = Server.new
      session = Session.new

      eval(File.open(path).read, binding)

      server.validate
      session.validate

      [ server, session ]
    end
  end
end
