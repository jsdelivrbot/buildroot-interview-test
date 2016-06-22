###############################################################################
# 
# beep
#
###############################################################################

BEEP_VERSION = 1.3
BEEP_SITE = http://www.johnath.com/beep
BEEP_LICENSE = GPLv2
BEEP_LICENSE_FILE = COPYING

define BEEP_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) beep
endef

define BEEP_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/beep $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))