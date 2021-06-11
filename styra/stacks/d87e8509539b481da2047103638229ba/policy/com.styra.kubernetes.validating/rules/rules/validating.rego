package stacks.d87e8509539b481da2047103638229ba.policy["com.styra.kubernetes.validating"].rules.rules

ignore[msg] {
  # title: check for liveness probe
  msg := sprintf("missing liveness probe in container '%s'", ["HELLO"])
}
