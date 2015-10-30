#!/path/to/mruby

config = {
  :host  => "127.0.0.1",
  :port  => "2003",
}
g = Graphite::Client.new(config)

path = "foo.bar"
datapoint = ARGV[0].to_f

g.post(path,datapoint)
