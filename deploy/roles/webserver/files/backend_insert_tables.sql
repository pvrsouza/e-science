INSERT INTO backend_vreimagecategory (id, category_name) VALUES (1, 'Portal/Cms');
INSERT INTO backend_vreimagecategory (id, category_name) VALUES (2, 'Wiki');
INSERT INTO backend_vreimagecategory (id, category_name) VALUES (3, 'Project Management');
INSERT INTO backend_vreimagecategory (id, category_name) VALUES (4, 'Digital Repository');
INSERT INTO backend_vreimagecategory (id, category_name) VALUES (5, 'Web Conferencing');
INSERT INTO backend_vreimagecategory (id, category_name) VALUES (6, 'Composite');

INSERT INTO backend_orkaimagecategory (id, category_name, ansible_cluster_config_tags, ansible_cluster_action_tags) VALUES (1, 'Debian Base','{"role":"yarn", "tags":"-t preconfig,postconfig"}','{"stop": "stop", "start": "start"}');
INSERT INTO backend_orkaimagecategory (id, category_name, ansible_cluster_config_tags, ansible_cluster_action_tags) VALUES (2, 'Hadoop Base','{"role":"yarn", "tags":"-t postconfig"}','{"stop": "stop,FLUMEstop", "start": "start,FLUMEstart"}');
INSERT INTO backend_orkaimagecategory (id, category_name, ansible_cluster_config_tags, ansible_cluster_action_tags) VALUES (3, 'Hue','{"role":"yarn", "tags":"-t postconfig,hueconfig"}','{"start": "start,FLUMEstart,HUEstart", "stop": "stop,FLUMEstop,HUEstop"}');
INSERT INTO backend_orkaimagecategory (id, category_name, ansible_cluster_config_tags, ansible_cluster_action_tags) VALUES (4, 'Ecosystem','{"role":"yarn", "tags":"-t postconfig,hueconfig,ecoconfig"}','{"start": "start,FLUMEstart,ECOSYSTEMstart,HUEstart","stop": "stop,FLUMEstop,ECOSYSTEMstop,HUEstop"}');
INSERT INTO backend_orkaimagecategory (id, category_name, ansible_cluster_config_tags, ansible_cluster_action_tags) VALUES (5, 'Cloudera','{"role":"cloudera", "tags":"-t preconfig,postconfig"}','{"start": "start,CLOUDstart", "stop": "stop,CLOUDstop"}');

INSERT INTO backend_orkaimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_access_url, image_category_id) VALUES (1, 'Hadoop-2.5.2', '3f1f5195-7769-44ba-a4c2-418d86e30f97', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"Hadoop":{"version":"2.5.2","help":"https://hadoop.apache.org/"},"Flume":{"version":"1.6","help":"https://flume.apache.org/"}}','{"ram":2048}','{}','{8088/cluster}',2);
INSERT INTO backend_orkaimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_access_url, image_category_id) VALUES (2, 'Cloudera-CDH-5.4.4', '05f23bb1-5415-4da3-8e8a-93daa384b2f8', '{"Debian":{"version":"7.8","help":"https://www.debian.org/"},"Hadoop":{"version":"2.6.0-cdh5.4.4","help":"https://hadoop.apache.org/"},"Flume":{"version":"1.5.0-cdh5.4.4","help":"https://flume.apache.org/"},"Hue":{"version":"3.7.0","help":"http://gethue.com/"},"Pig":{"version":"0.12.0-cdh5.4.4","help":"http://pig.apache.org/"},"Hive":{"version":"1.1.0+cdh5.4.4","help":"http://hive.apache.org/"},"Hbase":{"version":"1.0.0-cdh5.4.4","help":"http://hbase.apache.org/"},"Oozie":{"version":"4.1.0-cdh5.4.4","help":"http://oozie.apache.org/"},"Spark":{"version":"1.3.0","help":"http://spark.apache.org/"},"Cloudera":{"version":"5.4.4","help":"http://www.cloudera.com/content/cloudera/en/home.html"}}','{"ram":4096}', '{admin_password}', '{8888}',5);
INSERT INTO backend_orkaimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_access_url, image_category_id) VALUES (3, 'Hue-3.8.0', '7a8423da-0cfb-414c-9491-1dcb81a87eb6', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"Hadoop":{"version":"2.5.2","help":"https://hadoop.apache.org/"},"Flume":{"version":"1.6","help":"https://flume.apache.org/"},"Hue":{"version":"3.8.0","help":"http://gethue.com/"}}','{"ram":4096}', '{admin_password}', '{8888}',3);
INSERT INTO backend_orkaimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_access_url, image_category_id) VALUES (4, 'Ecosystem-on-Hue-3.8.0', 'dc171a3d-09bf-469d-9b7a-d3fb5c0afebc', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"Hadoop":{"version":"2.5.2","help":"https://hadoop.apache.org/"},"Flume":{"version":"1.6","help":"https://flume.apache.org/"},"Hue":{"version":"3.8.0","help":"http://gethue.com/"},"Pig":{"version":"0.15.0","help":"http://pig.apache.org/"},"Hive":{"version":"1.2.0","help":"http://hive.apache.org/"},"Hbase":{"version":"1.0.1.1","help":"http://hbase.apache.org/"},"Oozie":{"version":"4.1.0","help":"http://oozie.apache.org/"},"Spark":{"version":"1.3.1","help":"http://spark.apache.org/"}}','{"ram":4096}', '{admin_password}', '{8888}',4);
INSERT INTO backend_orkaimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_access_url, image_category_id) VALUES (5, 'Debian Base', 'd3782488-1b6d-479d-8b9b-363494064c52', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"Hadoop":{"version":"2.5.2","help":"https://hadoop.apache.org/"}}','{"ram":2048}','{}','{8088/cluster}',1);

INSERT INTO backend_vreimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_category_id, image_access_url, image_faq_links, requires_script) VALUES (1, 'Drupal-7.37', 'd6593183-39c7-4f64-98fe-e74c49ea00b1', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"Drupal":{"version":"7.37","help":"https://www.drupal.org/drupal-7.0"},"Docker":{"version":"1.6.2","help":"https://docs.docker.com/"},"MySQL":{"version":"5.6.25","help":"http://dev.mysql.com/doc/"}}', '{"ram":1024}', '{admin_password}', 1, '{}', '{"~Okeanos info for email port setup":"https://okeanos.grnet.gr/support/faq/cyclades-why-is-port-x-closed-is-it-blocked-by-design/","Info for docker operations":"https://github.com/grnet/e-science/blob/master/orka/VRE_README.md#general-docker-info"}',True);
INSERT INTO backend_vreimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_category_id, image_access_url, image_faq_links, requires_script) VALUES (2, 'Redmine-3.0.4', 'f64a11dc-97bd-44cb-a502-6c141cc42bfa', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"Redmine":{"version":"3.04","help":"https://www.redmine.org/"},"Docker":{"version":"1.6.2","help":"https://docs.docker.com/"},"PostgreSQL":{"version":"9.4","help":"http://www.postgresql.org/"}}', '{"ram":1024}', '{admin_password}', 3, '{}', '{"~Okeanos info for email port setup":"https://okeanos.grnet.gr/support/faq/cyclades-why-is-port-x-closed-is-it-blocked-by-design/","Info for docker operations":"https://github.com/grnet/e-science/blob/master/orka/VRE_README.md#general-docker-info"}',True);
INSERT INTO backend_vreimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_category_id, image_access_url, image_faq_links, requires_script) VALUES (3, 'Mediawiki-1.2.4', 'b1ae3738-b7b3-429e-abef-2fa475f30f0b', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"MediaWiki":{"version":"1.24","help":"https://www.mediawiki.org/wiki/MediaWiki"},"Docker":{"version":"1.6.2","help":"https://docs.docker.com/"},"MySQL":{"version":"5.6.25","help":"http://dev.mysql.com/doc/"},"PHP":{"version":"5.6","help":"https://php.net/"}}', '{"ram":1024}', '{admin_password}', 2, '{}', '{"~Okeanos info for email port setup":"https://okeanos.grnet.gr/support/faq/cyclades-why-is-port-x-closed-is-it-blocked-by-design/","Info for docker operations":"https://github.com/grnet/e-science/blob/master/orka/VRE_README.md#general-docker-info"}',True);
INSERT INTO backend_vreimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_category_id, image_access_url, image_faq_links, requires_script) VALUES (4, 'DSpace-5.3', 'c5850bc1-255d-4847-9b89-ce8e86667250', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"DSpace":{"version":"5.3","help":"http://www.dspace.org/introducing"},"Docker":{"version":"1.6.2","help":"https://docs.docker.com/"},"PostgreSQL":{"version":"9.4","help":"http://www.postgresql.org/"},"Maven":{"version":"3.2.1","help":"https://maven.apache.org/"},"Ant":{"version":"1.9.4","help":"http://ant.apache.org/"},"Tomcat":{"version":"8.0.9","help":"http://tomcat.apache.org/"}}', '{"ram":2048}', '{admin_password,admin_email}', 4, '{8080/xmlui,8080/jspui}', '{"~Okeanos info for email port setup":"https://okeanos.grnet.gr/support/faq/cyclades-why-is-port-x-closed-is-it-blocked-by-design/","Info for docker operations":"https://github.com/grnet/e-science/blob/master/orka/VRE_README.md#general-docker-info"}',True);
INSERT INTO backend_vreimage (id, image_name, image_pithos_uuid, image_components, image_min_reqs, image_init_extra, image_category_id, image_access_url, image_faq_links, requires_script) VALUES (5, 'BigBlueButton-0.81', '0d26fd55-31a4-46b3-955d-d94ecf04a323', '{"Debian":{"version":"8.0","help":"https://www.debian.org/"},"BigBlueButton":{"version":"0.81","help":"http://docs.bigbluebutton.org/"},"Docker":{"version":"1.6.2","help":"https://docs.docker.com/"}, "Tomcat":{"version":"6.0.24","help":"http://tomcat.apache.org/"}}', '{"cpu":2,"ram":2048}', '{}', 5, '{}', '{"~Okeanos info for email port setup":"https://okeanos.grnet.gr/support/faq/cyclades-why-is-port-x-closed-is-it-blocked-by-design/","Info for docker operations":"https://github.com/grnet/e-science/blob/master/orka/VRE_README.md#general-docker-info"}',False);


INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (1, 'Cyclades', 'Storage', '{"ext_vlmc":"Archipelago","drbd":"Standard"}', 'disk templates returned by Cyclades api matched to friendly name');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (2, 'VM_Flavor', 'Small', '{"cpu":2,"ram":2048,"disk":10}', 'cpu in cores, ram in MiB, disk in GiB');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (3, 'VM_Flavor', 'Medium', '{"cpu":4,"ram":4096,"disk":20}', 'cpu in cores, ram in MiB, disk in GiB');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (4, 'VM_Flavor', 'Large', '{"cpu":4,"ram":6144,"disk":40}', 'cpu in cores, ram in MiB, disk in GiB');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (5, 'VRE_Flavor', 'Small', '{"cpu":2,"ram":2048,"disk":5}', 'cpu in cores, ram in MiB, disk in GiB');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (6, 'VRE_Flavor', 'Medium', '{"cpu":2,"ram":4096,"disk":10}', 'cpu in cores, ram in MiB, disk in GiB');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (7, 'VRE_Flavor', 'Large', '{"cpu":4,"ram":6144,"disk":20}', 'cpu in cores, ram in MiB, disk in GiB');
INSERT INTO backend_setting (id, section, property_name, property_value, comment) VALUES (8, 'Ansible', 'Errors', '{"1":"Ansible playbook error","2":"Ansible Failed to contact a host","3":"Host is dark, not accepting connections"}', 'Reference (v1.9x): https://github.com/ansible/ansible/blob/stable-1.9/bin/ansible, https://github.com/ansible/ansible/blob/stable-1.9/lib/ansible/errors.py');

SELECT setval('backend_vreimage_id_seq', (SELECT MAX(id) FROM backend_vreimage)+1);
SELECT setval('backend_orkaimage_id_seq', (SELECT MAX(id) FROM backend_orkaimage)+1);
SELECT setval('backend_vreimagecategory_id_seq', (SELECT MAX(id) FROM backend_vreimagecategory)+1);
SELECT setval('backend_orkaimagecategory_id_seq', (SELECT MAX(id) FROM backend_orkaimagecategory)+1);
SELECT setval('backend_publicnewsitem_id_seq', (SELECT MAX(id) FROM backend_publicnewsitem)+1);
SELECT setval('backend_setting_id_seq', (SELECT MAX(id) FROM backend_setting)+1);