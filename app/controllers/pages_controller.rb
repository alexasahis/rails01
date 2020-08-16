require 'socket'
class PagesController < ApplicationController
  def about
    @rails_ver = Rails.version
    @ruby_ver = RUBY_VERSION
    @env = Rails.env
    @hostname = Socket.gethostname
    @ipaddr=Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address
    @remoteip = request.remote_ip
    @currtime = Time.current
  end
end
