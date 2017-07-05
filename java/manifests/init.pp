class java {

  file { "/home/vagrant/tools":
       ensure => directory,
      } ->

 file { "/home/vagrant/tools/jdk-8u131-linux-x64.tar.gz":
       ensure =>file,
       source => "puppet://puppet.example.com/extra_files/java/files/jdk-8u131-linux-x64.tar.gz",
#       require => File["/home/vagrant/tools"]
      } ->
 exec { "extracting the tar file":
       command => "/bin/tar -xf jdk-8u131-linux-x64.tar.gz",
       cwd => "/home/vagrant/tools",
 #      require => File["/home/vagrant/tools/jdk-8u131-linux-x64.tar.gz"]
      }
}
