class Graphite
  class Client
    def initialize(config)
      @host  = config[:host]
      @port  = config[:port]
    end

    def graphite_request
      TCPSocket.open(@host, @port)
    end

    def timestamp
       Time.now.to_i
    end

    def post(path,datapoint)
      graphite_request.write("#{path} #{datapoint} #{timestamp}\r\n\r\n")
    end
  end
end
