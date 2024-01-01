TITLE_ID = RENN12301
TARGET   = BLASTbeat
NAME     = BLASTbeat Raiders
OBJS     = main.o ztsplash.o

LIBS = -lvita2d -lSceDisplay_stub -lSceGxm_stub \
	-lSceSysmodule_stub -lSceCtrl_stub -lScePgf_stub -lScePvf_stub \
	-lSceCommonDialog_stub -lfreetype -lpng -ljpeg -lz -lm -lc -lSceAppMgr_stub

PREFIX  = arm-vita-eabi
CC      = $(PREFIX)-g++
CXX     = $(PREFIX)-g++
CFLAGS  = -Wl,-q -Wall -fno-lto
CXXFLAGS = $(CFLAGS) -std=c++11
ASFLAGS = $(CXXFLAGS)

# Link against the locally-built version of libvita2d if possible
LIBS += -L../libvita2d
CFLAGS += -I../libvita2d/include

all: $(TARGET).vpk

%.vpk: eboot.bin
	vita-mksfoex -s TITLE_ID=$(TITLE_ID) "$(TARGET)" param.sfo
	vita-pack-vpk -s param.sfo -b eboot.bin \
		--add sce_sys/icon0.png=sce_sys/icon0.png \
        --add sce_sys/livearea/contents/bg.png=sce_sys/livearea/contents/bg.png \
        --add sce_sys/livearea/contents/startup.png=sce_sys/livearea/contents/startup.png \
        --add sce_sys/livearea/contents/template.xml=sce_sys/livearea/contents/template.xml \
        $(TARGET).vpk

eboot.bin: $(TARGET).velf
	vita-make-fself -s $< $@

%.velf: %.elf
	vita-elf-create $< $@

$(TARGET).elf: $(OBJS)
	$(CXX) $(CXXFLAGS) $^ $(LIBS) -o $@

%.o: %.png
	$(PREFIX)-ld -r -b binary -o $@ $^

clean:
	@rm -rf $(TARGET).vpk $(TARGET).velf $(TARGET).elf $(OBJS) \
		eboot.bin param.sfo