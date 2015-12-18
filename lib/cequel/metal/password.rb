module Cequel
  module Metal
    class Password < Cassandra::Auth::Providers::Password
      def create_authenticator(_)
        Authenticator.new(@username, @password)
      end
    end
  end
end
