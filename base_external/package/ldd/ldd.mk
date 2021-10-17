##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = '29ffbd2a359abb30da1dfb887162e178d5d05e4b'
# Note:: Be sure to reference the *ssh* repository URL here (not https) to work properly                                                                                                                    
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-rajatchaple.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES


# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LDD__INSTALL_TARGET_CMDS
  $(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
  $(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
  $(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
  $(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
  
endef

$(eval $(generic-package))
