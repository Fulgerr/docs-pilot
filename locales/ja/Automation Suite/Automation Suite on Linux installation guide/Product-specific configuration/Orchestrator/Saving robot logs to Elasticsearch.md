# Saving robot logs to Elasticsearch

Saving robot logs to an Elasticsearch server can be achieved through two types of configuration: basic and advanced.

The basic configuration provides default functionality that activates the preconfigured Elasticsearch NLog target, which is made up of an Elasticsearch target wrapped in a Buffering target. This type of configuration is enough in most scenarios.

However, if you need to further customize the rules, you can use the advanced configuration method.

### Basic robot log Elasticsearch configuration

To apply the basic configuration, take the following steps. For more details, see Configuring the Orchestrator parameters.

In the configuration file, add a new section called orchestrator_robot_logs_elastic to the Orchestrator configuration, as shown in the following example:"orchestrator": {
    "enabled": true,
    "orchestrator_robot_logs_elastic": {
        "elastic_uri": "https://elastic.example.com:9200",
        "elastic_auth_username": "elastic-user",
        "elastic_auth_password": "elastic-password"
    }
}Update the following parameters with your own values:ParameterDescriptionelastic_uriThe address of the Elasticsearch instance that must be used. You must provide the address as a URI, along with a username and password.Example: https://elastic.example.com:9200Make sure you do not include a trailing slash.elastic_auth_usernameExample: elastic-userelastic_auth_passwordExample: elastic-password

The basic configuration supports Elasticsearch version 7.x. For Elasticsearch 8.x, you need to use the advanced configuration.


### Advanced robot log Elasticsearch configuration

Any changes you make per the next steps can negatively affect the functionality and stability of the entire system. It is advisable to only make changes if you understand their consequences.The advanced configuration allows you to fully customize your NLog.config target.

Follow the basic configuration steps described previously.Follow the Advanced NLog configuration steps, then update the robotElasticBuffer target with the properties that need to be changed.

The advanced configuration also supports Elasticsearch version 8.x.Sample nlog.config.json for Elasticsearch 7.x{
  "Nlog": {
    "targets": {
      "robotElasticBuffer": {
        "flushTimeout": 1000,
        "bufferSize": 1000,
        "slidingTimeout": false,
        "target": {
          "uri": "https://elastic.example.com:9200",
          "requireAuth": true,
          "username": "elastic-user",
          "password": "elastic-password",
          "index": "${event-properties:item=indexName}-${date:format=yyyy.MM}",
          "documentType": "logEvent",
          "includeAllProperties": true,
          "layout": "${message}",
          "excludedProperties": "agentSessionId,tenantId,indexName"
        }
      }
    }
  }
}Sample nlog.config.json for Elasticsearch 8.x{
  "Nlog": {
    "targets": {
      "robotElasticBuffer": {
        "flushTimeout": 1000,
        "bufferSize": 1000,
        "slidingTimeout": false,
        "target": {
          "uri": "https://elastic.example.com:9200",
          "requireAuth": true,
          "username": "elastic-user",
          "password": "elastic-password",
          "index": "${event-properties:item=indexName}-${date:format=yyyy.MM}",
          "documentType": "",
          "includeAllProperties": true,
          "layout": "${message}",
          "excludedProperties": "agentSessionId,tenantId,indexName"
        }
      }
    }
  }
}

