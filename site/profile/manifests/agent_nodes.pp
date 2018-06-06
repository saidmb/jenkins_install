class profile::agent_nodes {
  notify{'@@@@@@@@@@@@@ TOP OF agent_nodes.pp': }
  include dockeragent
  dockeragent::node { 'jenkinstest.puppet.vm': }
  notify{'@@@@@@@@@@@@@ BOTTOM OF agent_nodes.pp': }
}
