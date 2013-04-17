name              "java"
maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs Java runtime."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.10.0"

recipe "java", "Installs Java runtime"
recipe "java::openjdk", "Installs the OpenJDK flavor of Java"
recipe "java::oracle", "Installs the Oracle flavor of Java"
recipe "java::oracle_i386", "Installs the 32-bit jvm without setting it as the default"


%w{ debian ubuntu centos redhat scientific fedora amazon arch oracle freebsd windows }.each do |os|
  supports os
end

depends "windows"

attribute "java/install_flavor",
  :display_name => "Install Flavor",
  :description => "openJDK or oracle",
  :required => "optional",
  :recipes => ["java::default"]
 
attribute "java/jdk_version",
  :display_name => "JDK version",
  :description => "6 or 7",
  :required => "optional",
  :recipes => ["java::default"]

attribute "java/oracle/accept_oracle_download_terms",
  :display_name => "Accept Oracle java download terms",
  :description => "true or false",
  :required => "optional",
  :recipes => ["java::default"]
