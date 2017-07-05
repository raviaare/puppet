class example {

   
#  file { "/home/vagrant/tools":
 #       ensure => directory,
  #     } ->

 file { "/home/vagrant/tools/apache-tomcat-7.0.78.tar.gz":
       ensure =>file,
       source => "puppet://puppet.example.com/extra_files/example/files/apache-tomcat-7.0.78.tar.gz",
#       require => File["/home/vagrant/tools"]
      } ->
 exec { "example:extracting the tar file":
       command => "/bin/tar -xf apache-tomcat-7.0.78.tar.gz",
       cwd => "/home/vagrant/tools",
 #      require => File["/home/vagrant/tools/apache-tomcat-7.0.78.tar.gz"]
      }
}
