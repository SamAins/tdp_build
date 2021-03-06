AR = $(CROSS_COMPILE)ar
CC = $(CROSS_COMPILE)gcc
CXX = $(CROSS_COMPILE)g++
CPP = $(CROSS_COMPILE)cpp
NM = $(CROSS_COMPILE)nm
LKELF = $(CROSS_COMPILE)g++
OBJCOPY = $(CROSS_COMPILE)objcopy
RM=rm -Rf
MKDIR=mkdir -p

CXXFLAGS += -std=c++1z
LDFLAGS += -std=c++1z

define uniq =
  $(eval seen :=)
  $(foreach _,$1,$(if $(filter $_,${seen}),,$(eval seen += $_)))
  ${seen}
endef

