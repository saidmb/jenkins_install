class profile::agent_nodes {
  notify{'@@@@@@@@@@@@@ TOP OF agent_nodes.pp': }
  
  include dockeragent
  
  notify{'@@@@@@@@@@@@@ MIDDLE OF agent_nodes.pp': }

  dockeragent::node { 'jenkinstest.puppet.vm': 
    include jenkins_setup
  }
  
  notify{'@@@@@@@@@@@@@ BOTTOM OF agent_nodes.pp': }
}
