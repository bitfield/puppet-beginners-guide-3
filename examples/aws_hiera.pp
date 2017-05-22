$aws_resources = lookup('aws_resources', Hash, 'hash')
$aws_resources.each | String $r_type, Hash $resources | {
  $resources.each | String $r_title, Hash $attrs | {
    Resource[$r_type] { $r_title:
      * => $attrs,
    }
  }
}
