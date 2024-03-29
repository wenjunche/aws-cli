
_template/active-analytics.rvm.event  (legacy)
_index_template/active-analytics.runtime.event

_alias/analytics.rvm.event

_cat/indices/active-11064fee744de7e080cc8b11eaac99468f3d4847-1

analytics.rvm.event/_count

analytics.rvm.event/_settings

active-f3a8035fc59fbffaa4756935075958e19972ed38-1/_ilm/explain

# life cycle management 
analytics.rvm.event/_ilm/explain

# show mapping of the index
analytics.rvm.event/_mapping/?pretty

# show mapping of one field
analytics.rvm.event/_mapping/field/event.payload.appConfig?pretty

# show count of docs for a date range
analytics.rvm.event/_search
{
  "query": {
    "range": {
      "timestamp": {
        "gte": "2020/07/01",
        "lt": "2020/07/15",
        "format": "yyyy/MM/dd"
      }
    }
  },
  "fields": ["timestamp"],
  "_source": false,
  "size": 0,
  "track_total_hits": true    
}

# search by date range.  this query returns a task
GET analytics.rvm.event/_search
{
  "query": {
    "range": {
      "timestamp": {
        "gte": "2020/07/01",
        "lt": "2020/07/15",
        "format": "yyyy/MM/dd"
      }
    }
  }
}

# search by matching a field
/workspace.analytics.event/_search
{
  "query": {
    "match_phrase": {
      "app_config": "https://bmo-dev.os.openfin.co/api/platform.json"
    }
  }
}

{
  "query": {
    "match_phrase_prefix": {
      "app_config": { "query": "https://bmo-dev.os.openfin.co/api/platform" }
    }
  }
}

# delete by date range.  this query returns a task
POST analytics.rvm.event/_delete_by_query?wait_for_completion=false
{
  "query": {
    "range": {
      "timestamp": {
        "gte": "2020/07/01",
        "lt": "2020/07/15",
        "format": "yyyy/MM/dd"
      }
    }
  }
}

#delete by date range and event type
POST analytics.rvm.event/_delete_by_query?wait_for_completion=false
{
  "query": {
    "bool": {
      "must": [],
      "filter": [
        {
          "range": {
            "timestamp": {
              "format": "strict_date_optional_time",
              "gte": "2023-10-01T14:00:00.000Z",
              "lte": "2023-11-01T14:05:00.000Z"
            }
          }
        },
        {
          "match_phrase": {
            "event.type": "heartbeat"
          }
        }
      ]
    }
  }
}

# query task by ID
_tasks/pkTbKeM8TmKlXSUFp-dFnw:254410228

# search for tasks by action
_tasks?detailed=true&actions=*/delete/byquery

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

# delete an alias
curl -X "DELETE" http://localhost:9200/*/_alias/analytics.rvm.event


# Check space allocation
_cat/allocation?v&s=node

# check shard status
_cat/shards?v&s=index

#reset rebalance config
PUT _cluster/settings

{
  "transient": {
    "cluster.routing.allocation.disk.watermark.high": null,
    "cluster.routing.allocation.disk.watermark.flood_stage": null
  }
}