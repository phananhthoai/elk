curl -X PUT "10.1.152.239:9200/_cluster/settings?pretty" -H 'Content-Type: application/json' -d'
{
  "persistent": {
    "cluster.routing.allocation.disk.watermark.low": "90%",
    "cluster.routing.allocation.disk.watermark.low.max_headroom": "100GB",
    "cluster.routing.allocation.disk.watermark.high": "95%",
    "cluster.routing.allocation.disk.watermark.high.max_headroom": "20GB",
    "cluster.routing.allocation.disk.watermark.flood_stage": "97%",
    "cluster.routing.allocation.disk.watermark.flood_stage.max_headroom": "5GB",
    "cluster.routing.allocation.disk.watermark.flood_stage.frozen": "97%",
    "cluster.routing.allocation.disk.watermark.flood_stage.frozen.max_headroom": "5GB"
  }
}
'
#curl -X PUT "localhost:9200/*/_settings?expand_wildcards=all&pretty" -H 'Content-Type: application/json' -d'
#{
#  "index.blocks.read_only_allow_delete": null
#}
#'
