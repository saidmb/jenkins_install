class role::master_server {
  notify{'@@@@@@@@@@@@@ TOP OF master_server.pp': }
  include profile::base
  include profile::agent_nodes
  notify{'@@@@@@@@@@@@@ BOTTOM OF master_server.pp': }

}
