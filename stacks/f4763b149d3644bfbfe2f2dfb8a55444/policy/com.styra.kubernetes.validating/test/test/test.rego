package stacks.f4763b149d3644bfbfe2f2dfb8a55444.policy["com.styra.kubernetes.validating"].test.test

import data.stacks.f4763b149d3644bfbfe2f2dfb8a55444.policy["com.styra.kubernetes.validating"].rules.rules as rules

latest_deploy := {
  "apiVersion": "apps/v1",
  "kind": "Deployment",
  "metadata": {
    "name": "nginx-deployment",
    "namespace": "secon-2020",
    "labels": {
      "app": "nginx"
    }
  },
  "spec": {
    "replicas": 1,
    "selector": {
      "matchLabels": {
        "app": "nginx"
      }
    },
    "template": {
      "metadata": {
        "labels": {
          "app": "nginx"
        }
      },
      "spec": {
        "containers": [
          {
            "name": "nginx",
            "image": "artifactory-dockerhub.cloud.capitalone.com/nginx:latest",
            "ports": [
              {
                "containerPort": 80
              }
            ]
          }
        ]
      }
    }
  }
}
versioned_deploy := {
  "apiVersion": "apps/v1",
  "kind": "Deployment",
  "metadata": {
    "name": "nginx-deployment",
    "namespace": "secon-2020",
    "labels": {
      "app": "nginx"
    }
  },
  "spec": {
    "replicas": 1,
    "selector": {
      "matchLabels": {
        "app": "nginx"
      }
    },
    "template": {
      "metadata": {
        "labels": {
          "app": "nginx"
        }
      },
      "spec": {
        "containers": [
          {
            "name": "nginx",
            "image": "artifactory-dockerhub.cloud.capitalone.com/nginx:v0.1.0",
            "ports": [
              {
                "containerPort": 80
              }
            ]
          }
        ]
      }
    }
  }
}
test_create_deploy_latest {
    not rules.allow with input as latest_deploy
}
test_create_deploy_versioned {
    rules.allow with input as versioned_deploy
}