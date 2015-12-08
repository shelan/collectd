name             'collectd'
maintainer       "collectd"
maintainer_email "shelanrc@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs collectd'
version          "0.1"

recipe            "collectd::install", "Experiment setup for collectd"
recipe            "collectd::experiment",  "configFile=; Experiment name: experiment"
recipe            "collectd::",  "configFile=; Experiment name: "


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "collectd/group",
:description => "group parameter value",
:type => "string"

attribute "collectd/user",
:description => "user parameter value",
:type => "string"


