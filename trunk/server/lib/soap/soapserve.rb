# -* coding: UTF-8 -*-
###
  # Himle Server -- http://himle.org/
  #
  # Copyright (C) 2008 Juha-Jarmo Heinonen
  #
  # This file is part of Himle Server.
  #
  # Himle Server is free software: you can redistribute it and/or modify
  # it under the terms of the GNU General Public License as published by
  # the Free Software Foundation, either version 3 of the License, or
  # (at your option) any later version.
  #
  # Himle server is distributed in the hope that it will be useful,
  # but WITHOUT ANY WARRANTY; without even the implied warranty of
  # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  # GNU General Public License for more details.
  #
  # You should have received a copy of the GNU General Public License
  # along with this program.  If not, see <http://www.gnu.org/licenses/>.
  #
  ###

require 'soap/rpc/router'
require 'soap/streamHandler'
require 'soap/soaplet'

module Himle
module Server

=begin
 Himle::Server::SOAP::SOAPServe provides Himle-specific SOAP access to Himle::Server::Pluginmanager
=end
module SOAP
  class SOAPServe < ::SOAP::RPC::RACK_SOAPlet
    def post( req, res )
      super
      puts "SOAPServe post done."
    end
  end
end
end
end