# java
default['java']['jdk_version'] = '8'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['jdk']['8']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz'
default['java']['jdk']['8']['x86_64']['checksum'] = 'a47dc0962a57b27a0cc00b9f11a53dc3add40c98633ba49a2419b845e4dedf43'
default['java']['oracle']['jce']['enabled'] = true
default['java']['oracle']['jce']['home'] = '/usr/jdk64/'
default['java']['oracle']['jce']['java_version']['url'] = 'http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip'
default['java']['oracle']['jce']['java_version']['checksum'] = 'f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59'

# hortonworks ambari repo
default['hw']['ambari']['version'] = '2.4.1'
case node['hw']['ambari']['version']
when '2.4.1'
  default['hw']['ambari']['repo'] = "http://public-repo-1.hortonworks.com/ambari/centos#{node['platform_version'].to_i}/2.x/updates/2.4.1.0/ambari.repo"
end

# hortonworks hdp repo
default['hw']['hdp']['version'] = '2.5.0'
case node['hw']['hdp']['version']
when '2.4.3'
  default['hw']['hdp']['repo'] = "http://public-repo-1.hortonworks.com/HDP/centos#{node['platform_version'].to_i}/2.x/updates/2.4.3.0/hdp.repo"
when '2.5.0'
  default['hw']['hdp']['repo'] = "http://public-repo-1.hortonworks.com/HDP/centos#{node['platform_version'].to_i}/2.x/updates/2.5.0.0/hdp.repo"
end

# hortonworks hdf repo
default['hw']['hdf']['version'] = '2.1.1'
case node['hw']['hdf']['version']
when '2.1.1'
  default['hw']['hdf']['repo'] = "http://public-repo-1.hortonworks.com/HDF/centos#{node['platform_version'].to_i}/2.x/updates/2.1.1.0/hdf.repo"
  default['hw']['hdf']['mgmt_pack']['url'] = "http://public-repo-1.hortonworks.com/HDF/centos#{node['platform_version'].to_i}/2.x/updates/2.1.1.0/tars/hdf_ambari_mp/hdf-ambari-mpack-2.1.1.0-2.tar.gz"
  default['hw']['hdf']['mgmt_pack']['checksum'] = '1f85395a63573ef7b3ff8cbbb6822b1f46615383c0219ac0064e0739b8634591'
end

# config
default['hw']['ambari']['server']['config']['api_ssl'] = 'false'
default['hw']['ambari']['server']['config']['api_ssl_cert_name'] = 'https.crt'
default['hw']['ambari']['server']['config']['api_ssl_key_name'] = 'https.key'
default['hw']['ambari']['server']['config']['api_ssl_port'] = '8443'
default['hw']['ambari']['server']['config']['jdbc_database_name'] = 'ambari'
default['hw']['ambari']['server']['config']['jdbc_database'] = 'postgres'
default['hw']['ambari']['server']['config']['jdbc_postgres_schema'] = 'ambari'
default['hw']['ambari']['server']['config']['jdbc_user_name'] = 'ambari'
default['hw']['ambari']['server']['config']['jdbc_user_password'] = 'bigdata'
default['hw']['ambari']['server']['config']['jdbc_user_password_file'] = '/etc/ambari-server/conf/password.dat'
default['hw']['ambari']['server']['config']['ldap_is_configured'] = 'false'
default['hw']['ambari']['server']['config']['ldap_bind_anonymously'] = 'false'
default['hw']['ambari']['server']['config']['ldap_dn_attribute'] = 'dn'
default['hw']['ambari']['server']['config']['ldap_group_membership_attr'] = 'memberUid'
default['hw']['ambari']['server']['config']['ldap_group_naming_attr'] = 'cn'
default['hw']['ambari']['server']['config']['ldap_group_object_class'] = 'posixgroup'
default['hw']['ambari']['server']['config']['ldap_manager_password'] = '/etc/ambari-server/conf/ldap-password.dat'
default['hw']['ambari']['server']['config']['ldap_referral'] = 'follow'
default['hw']['ambari']['server']['config']['ldap_use_ssl'] = 'true'
default['hw']['ambari']['server']['config']['ldap_user_object_class'] = 'person'
default['hw']['ambari']['server']['config']['ldap_username_attribute'] = 'uid'
default['hw']['ambari']['server']['config']['ssl_truststore_enabled'] = 'false'
default['hw']['ambari']['server']['config']['ssl_truststore_password'] = 'changeit'
default['hw']['ambari']['server']['config']['ssl_truststore_path'] = '/var/lib/ambari-server/keys/keystore.jks'
default['hw']['ambari']['server']['config']['ssl_truststore_type'] = 'jks'
default['hw']['ambari']['server']['config']['two_way_ssl'] = 'false'
default['hw']['ambari']['server']['crypto']['ca'] = '/etc/pki/ca-trust/source/anchors/ca.crt'
default['hw']['ambari']['server']['crypto']['https_cert'] = "/etc/pki/tls/certs/#{node['fqdn']}.crt"
default['hw']['ambari']['server']['crypto']['https_key'] = "/etc/pki/tls/private/#{node['fqdn']}.key"
default['hw']['ambari']['server']['crypto']['https_key_pass'] = 'changeit'
default['hw']['ambari']['server']['crypto']['https_keystore_p12'] = "/etc/pki/tls/certs/#{node['fqdn']}.p12"
default['hw']['ambari']['server']['crypto']['https_keystore_jks'] = "/etc/pki/tls/certs/#{node['fqdn']}.jks"
default['hw']['ambari']['server']['crypto']['ldap_pass'] = 'changeit'
default['hw']['ambari']['server']['crypto']['truststore_jks'] = "/etc/pki/tls/certs/#{node['fqdn']}.jks"
default['hw']['ambari']['server']['crypto']['truststore_pass'] = 'changeit'
default['hw']['ambari']['server']['user']['name'] = 'ambari-server'
default['hw']['ambari']['server']['user']['uid'] = '15010'
default['hw']['ambari']['server']['user']['home'] = '/var/lib/ambari-server'
default['hw']['ambari']['server']['user']['shell'] = '/bin/bash'
default['hw']['ambari']['agent']['config']['ssl_truststore_enabled'] = 'false'
default['hw']['ambari']['agent']['config']['ssl_truststore_password'] = 'changeit'
default['hw']['ambari']['agent']['config']['ssl_truststore_path'] = '/var/lib/ambari-server/keys/keystore.jks'
default['hw']['ambari']['agent']['config']['ssl_truststore_type'] = 'jks'
default['hw']['ambari']['agent']['crypto']['cert'] = "/etc/pki/tls/certs/#{node['fqdn']}.crt"
default['hw']['ambari']['agent']['crypto']['key'] = "/etc/pki/tls/private/#{node['fqdn']}.key"
default['hw']['ambari']['agent']['crypto']['ca'] = '/etc/pki/ca-trust/source/anchors/ca.crt'
default['hw']['ambari']['agent']['crypto']['truststore_jks'] = "/etc/pki/tls/certs/#{node['fqdn']}.jks"
default['hw']['ambari']['agent']['user']['name'] = 'ambari-agent'
default['hw']['ambari']['agent']['user']['home'] = '/var/lib/ambari-agent'
default['hw']['ambari']['agent']['user']['shell'] = '/bin/bash'
default['hw']['ambari']['agent']['user']['uid'] = '15011'
default['hw']['ambari']['infra']['config']['infra-solr-env']['infra_solr_ssl_enabled'] = "false"
default['hw']['ambari']['infra']['crypto']['keystore_jks'] = "/var/lib/ambari-infra-solr/keys/infra.solr.keyStore.jks"
default['hw']['ambari']['infra']['crypto']['truststore_jks'] = "/var/lib/ambari-infra-solr/keys/infra.solr.trustStore.jks"
default['hw']['ambari']['infra']['user']['name'] = 'infra-solr'
default['hw']['ambari']['infra']['user']['home'] = '/home/infra-solr'
default['hw']['ambari']['infra']['user']['shell'] = '/bin/bash'
default['hw']['ambari']['infra']['user']['name'] = '15029'
default['hw']['ambari']['metrics']['config']['ams-grafana-ini']['protocol'] = 'http'
default['hw']['ambari']['metrics']['crypto']['cert'] = "/etc/ambari-metrics-grafana/conf/ams-grafana.crt"
default['hw']['ambari']['metrics']['crypto']['key'] = "/etc/ambari-metrics-grafana/conf/ams-grafana.key"
default['hw']['ambari']['metrics']['user']['name'] = 'ams'
default['hw']['ambari']['metrics']['user']['home'] = '/home/ams'
default['hw']['ambari']['metrics']['user']['shell'] = '/bin/bash'
default['hw']['ambari']['metrics']['user']['name'] = '15015'
default['hw']['hadoop']['common']['group']['name'] = 'hadoop'
default['hw']['hadoop']['common']['group']['gid'] = '10010'
default['hw']['hadoop']['hdfs']['user']['name'] = 'hdfs'
default['hw']['hadoop']['hdfs']['user']['home'] = '/home/hdfs'
default['hw']['hadoop']['hdfs']['user']['shell'] = '/bin/bash'
default['hw']['hadoop']['hdfs']['user']['uid'] = '15030'
default['hw']['logsearch']['config']['logsearch-env']['logsearch_ui_protocol'] = 'http'
default['hw']['logsearch']['crypto']['keystore_jks'] = "/var/lib/logsearch/keys/logsearch.keyStore.jks"
default['hw']['logsearch']['crypto']['truststore_jks'] = "/var/lib/logsearch/keys/logsearch.trustStore.jks"
default['hw']['logsearch']['user']['name'] = 'logsearch'
default['hw']['logsearch']['user']['home'] = '/home/logsearch'
default['hw']['logsearch']['user']['shell'] = '/bin/bash'
default['hw']['logsearch']['user']['name'] = '15036'

case node.chef_environment
when 'production'
  default['hw']['ambari']['server']['config']['host_cname'] = 'ambari.prd.domain.local'
  default['hw']['ambari']['server']['config']['ldap_base_dn'] = 'dc=prd,dc=domain,dc=local'
  default['hw']['ambari']['server']['config']['ldap_manager_dn'] = 'uid=manager,cn=users,cn=accounts,dc=prd,dc=domain,dc=local'
  default['hw']['ambari']['server']['config']['ldap_primary_url'] = 'ldap-server-01.prd.domain.local:636'
  default['hw']['ambari']['server']['config']['ldap_sync_groups'] = [ 'prd_user_group' ]
  default['hw']['ambari']['server']['config']['ldap_sync_users'] = [ 'prd_user' ]
when 'staging'
  default['hw']['ambari']['server']['config']['host_cname'] = 'ambari.stg.domain.local'
  default['hw']['ambari']['server']['config']['ldap_base_dn'] = 'dc=stg,dc=domain,dc=local'
  default['hw']['ambari']['server']['config']['ldap_manager_dn'] = 'uid=manager,cn=users,cn=accounts,dc=stg,dc=domain,dc=local'
  default['hw']['ambari']['server']['config']['ldap_primary_url'] = 'ldap-server-01.stg.domain.local:636'
  default['hw']['ambari']['server']['config']['ldap_sync_groups'] = [ 'stg_user_group' ]
  default['hw']['ambari']['server']['config']['ldap_sync_users'] = [ 'stg_user' ]
else
  default['hw']['ambari']['server']['config']['host_cname'] = 'ambari.dev.domain.local'
  default['hw']['ambari']['server']['config']['ldap_base_dn'] = 'dc=dev,dc=domain,dc=local'
  default['hw']['ambari']['server']['config']['ldap_manager_dn'] = 'uid=manager,cn=users,cn=accounts,dc=dev,dc=domain,dc=local'
  default['hw']['ambari']['server']['config']['ldap_primary_url'] = 'ldap-server-01.dev.domain.local:636'
  default['hw']['ambari']['server']['config']['ldap_sync_groups'] = [ 'dev_user_group' ]
  default['hw']['ambari']['server']['config']['ldap_sync_users'] = [ 'dev_user' ]
end
