class profile::agent_nodes {

  include dockeragent
  dockeragent::node { 'jenkinstest.puppet.vm': }

}
