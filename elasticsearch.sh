
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
