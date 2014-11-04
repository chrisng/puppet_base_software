class base_software {

  $base_software = ['htop', 'iotop', 'glances', 'curl', 'vim', 'ethtool' ]
  package { "$base_software": ensure => latest, }


  exec {"add-glance-repo":
    command "add-apt-repository ppa:arnaud-hartmann/glances-stable"
  }

}
