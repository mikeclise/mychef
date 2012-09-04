maintainer       "Precor"
maintainer_email "mike.clise@precor.com"
license          "All rights reserved"
description      "Installs/Configures helloworld"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "helloworld::default","Prints hello world output"
