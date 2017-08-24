# Manage NTP
class pbg_ntp_params (
  String $version = 'installed',
) {
  ensure_packages(['ntp'],
    {
      'ensure' => $version,
    }
  )
}

include pbg_ntp_params
