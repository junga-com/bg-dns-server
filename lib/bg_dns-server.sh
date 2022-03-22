

# Library
# Gives this host the cabability of configuring bind9 as a domain DNS server
# A domain DNS server is a general purpose DNS server that can act as the local resolver for clients in private networks and also
# as the authoratative server for the domain's name as well as other names. It has internal and external views for these purposes.
#
# The dns server can operate as a stand alone server or it can cooperate in a set of master (aka primary) and slave (aka secondary)
# servers.
#
# The configuration of the server is stored in the "bg-core config" system wide config system. On a stand alone host, the config
# is specific to that host but in a bgdomain, the config system is shared among the domain and new multi-master or slave servers
# can be deployed automatically and will understand the topology of the bgdomain.

### declare dependance on other libraries here
#import bg_...  ;$L1;$L2


# usage: dnsUpdate
function dnsUpdate()
{
	local dnsRole;  configGet -v"enum:master,slave" -R dnsRole  dnsServer role  "master"


}
