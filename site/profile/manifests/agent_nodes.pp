class profile::agent_nodes {
  notify{'@@@@@@@@@@@@@ TOP OF agent_nodes.pp': }
  
  include dockeragent
  
  notify{'@@@@@@@@@@@@@ MIDDLE OF agent_nodes.pp': }

  dockeragent::node { 'jenkinstest.puppet.vm': }
  
  notify{'@@@@@@@@@@@@@ BOTTOM OF agent_nodes.pp': }
}
