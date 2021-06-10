package stacks.d87e8509539b481da2047103638229ba.selectors
import data.library.v1.utils.labels.match.v1 as match
systems[system_id] {
  include := {
     "system-type": {
     "kubernetes"
    },
    "session-type": {
      "debug"
    }
  }
  exclude := {}
  metadata := data.metadata[system_id]
  match.all(metadata.labels.labels, include, exclude)
}
