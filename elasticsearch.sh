
_alias/analytics.runtime.event

_cat/indices/active-11064fee744de7e080cc8b11eaac99468f3d4847-1

analytics.rvm.event/_count

analytics.rvm.event/_settings

# show mapping of the index
analytics.rvm.event/_mapping/?pretty

# show mapping of one field
analytics.rvm.event/_mapping/field/event.payload.appConfig?pretty

# update mapping of one field
PUT analytics.rvm.event/_mapping?pretty
Body:
{
  "properties": {
    "event.payload.appConfig": {
        "fields": {
            "keyword": {
                "ignore_above": 32766,
                "type": "keyword"
            }
        },
        "type": "text"
    }
  }
}

# To launch ElasticSearch docker image locally
# Environment
#   DISCOVERY.TYPE: single-node
#   XPACK.SECURITY.ENABLED: false
# Ports
#   9200/tcp:  0.0.0.0:9200
#   9300/tcp:  0.0.0.0:9300
