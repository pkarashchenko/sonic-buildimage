# docker image for brcm syncd

DOCKER_SYNCD_BRCM = docker-syncd-brcm.gz
$(DOCKER_SYNCD_BRCM)_PATH = $(PLATFORM_PATH)/docker-syncd-brcm
$(DOCKER_SYNCD_BRCM)_DEPENDS += $(SYNCD)
$(DOCKER_SYNCD_BRCM)_FILES += $(DSSERVE) $(BCMCMD)
$(DOCKER_SYNCD_BRCM)_LOAD_DOCKERS += $(DOCKER_BASE)
SONIC_DOCKER_IMAGES += $(DOCKER_SYNCD_BRCM)
SONIC_INSTALL_DOCKER_IMAGES += $(DOCKER_SYNCD_BRCM)

$(DOCKER_SYNCD_BRCM)_CONTAINER_NAME = syncd
$(DOCKER_SYNCD_BRCM)_RUN_OPT += --net=host --privileged -t
$(DOCKER_SYNCD_BRCM)_RUN_OPT += -v /host/machine.conf:/etc/machine.conf
$(DOCKER_SYNCD_BRCM)_RUN_OPT += --volumes-from database
$(DOCKER_SYNCD_BRCM)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
