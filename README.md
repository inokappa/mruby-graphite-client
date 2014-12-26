# Graphite client for mruby

## require mrbgems

 * mruby-socket

## install by mrbgems

```bash
MRuby::Build.new do |conf|

  conf.gem :git => 'https://github.com/inokappa/mruby-graphite-client.git'

end
```

## example

### Single Datapoint

```ruby
#!/path/to/mruby

config = {
  :host  => "127.0.0.1",
  :port  => "2003",
}
g = Graphite::Client.new(config)

path = "foo.bar"
datapoint = ARGV[0].to_f

g.post(path,datapoint)
```

```bash
/path/to/graphite-client.rb `echo $RANDOM`
```

## Graphite

### Documents

 * [Graphite Documentation](https://graphite.readthedocs.org/en/latest/)

### Setup for Ubuntu14.04

```bash
sudo apt-get install graphite-web graphite-carbon
```

### Data dump

```bash
whisper-dump /var/lib/graphite/whisper/foo/bar.wsp
```

Followung Output.

```bash
Meta data:
  aggregation method: average
  max retention: 86400
  xFilesFactor: 0.5

Archive 0 info:
  offset: 28
  seconds per point: 1
  points: 86400
  retention: 86400
  size: 1036800

Archive 0 data:
0: 1419593100,      12345

(snip)

2195: 1419595295,      25634
2196: 1419595296,      23587
2197: 1419595297,       6465
2198: 1419595298,       7812
2199: 1419595299,      29397
2200: 1419595300,        416
2201: 1419595301,      29858
2217: 1419595317,      15864
2218: 1419595318,      21411
2219: 1419595319,      30154
2220: 1419595320,      21152
```

### Visualize

Graphite's default Visualize insterface is [graphite-web](https://github.com/graphite-project/graphite-web).

![](https://qiita-image-store.s3.amazonaws.com/0/24438/158f9c75-4c32-1c65-9b57-c0602b23db69.gif "graphite_20141227.mov.gif")

Can [tasseo](https://github.com/obfuscurity/tasseo) also use.

![](https://qiita-image-store.s3.amazonaws.com/0/24438/6a3b9e9f-955e-96c8-dc6a-399a2a8846fa.gif "tasseo3_20141227.mov.gif")

# License
under the MIT License:

* http://www.opensource.org/licenses/mit-license.php

