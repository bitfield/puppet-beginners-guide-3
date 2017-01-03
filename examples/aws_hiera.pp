$aws_resources = hiera('aws_resources')
$aws_resources.each | String $r_type, Hash $resources | {
  $resources.each | String $r_title, Hash $attrs | {
    Resource[$r_type] { $r_title:
      * => $attrs,
    }
  }
}
