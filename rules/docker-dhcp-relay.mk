# docker dhcp relay image

DOCKER_DHCP_RELAY = docker-dhcp-relay.gz
$(DOCKER_DHCP_RELAY)_PATH = $(DOCKERS_PATH)/docker-dhcp-relay
$(DOCKER_DHCP_RELAY)_LOAD_DOCKERS = $(DOCKER_BASE)

SONIC_SIMPLE_DOCKER_IMAGES += $(DOCKER_DHCP_RELAY)
