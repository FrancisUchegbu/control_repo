class profile::ssh_server{
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true'
     
        }
        ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa'
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUK3IaOEXPSbHcnDF/8HoORkIfT3RNdWwgw1YTG4QUTm12nEYiswHoLjricUWqGHZ+BAUXnfpgquSHDaL35xwiw82GwkDYL4UJjX23wLO2Z7KR++fQExyJqbOqvcFN0cH8ZRX5f2Pe00UCuOdcCmBAOP18bWfeDIkuIaUEZR6a94BFBgRcQ7JYubQm5FSzBiXvmElrX1+B5BI7ytVBYEp80P6NNIr0TTFtrax6L22fkCDzTx+spkkKpTrfyNyyuNYaPXcohq/DN9R+JE32YJ1REN1TMyjX0+ruj2UurA7uVero+X0H5Boc7DBZ+TtlugMbFALX1ZgeD9TGwaORs9o5',
        
        
        
        }


}
