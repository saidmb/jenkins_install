class profile::agent_nodes {
  include dockeragent
  #dockeragent::node { 'jenkinstest.puppet.vm': }
  #dockeragent::node { 'test.puppet.vm': }
}
