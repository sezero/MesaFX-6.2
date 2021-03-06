# Makefile for core library for VMS
# contributed by Jouk Jansen  joukj@hrem.stm.tudelft.nl
# Last revision : 18 August 2004

.first
	define gl [---.include.gl]
	define math [-.math]

.include [---]mms-config.

##### MACROS #####

VPATH = RCS

INCDIR = [---.include],[-.glapi],[-.shader]
LIBDIR = [---.lib]
CFLAGS = /include=($(INCDIR),[])/define=(PTHREADS=1)/name=(as_is,short)

SOURCES =accum.c \
	api_arrayelt.c \
	api_loopback.c \
	api_noop.c \
	api_validate.c \
 	attrib.c \
	blend.c \
	bufferobj.c \
	buffers.c \
	clip.c \
	colortab.c \
	context.c \
	convolve.c \
	debug.c \
	depth.c \
	dispatch.c \
	dlist.c \
	drawpix.c \
	enable.c \
	enums.c \
	eval.c \
	extensions.c \
	feedback.c \
	fog.c \
	get.c \
	hash.c \
	hint.c \
	histogram.c \
	image.c \
	imports.c \
	light.c \
	lines.c \
	matrix.c \
	occlude.c \
	pixel.c \
	points.c \
	polygon.c \
	rastpos.c \
	state.c \
	stencil.c \
	texcompress.c \
	texcompress_fxt1.c \
	texcompress_s3tc.c \
	texformat.c \
	teximage.c \
	texobj.c \
	texstate.c \
	texstore.c \
	varray.c \
	vtxfmt.c

OBJECTS=accum.obj,\
api_arrayelt.obj,\
api_loopback.obj,\
api_noop.obj,\
api_validate.obj,\
attrib.obj,\
blend.obj,\
bufferobj.obj,\
buffers.obj,\
clip.obj,\
colortab.obj,\
context.obj,\
convolve.obj,\
debug.obj,\
depth.obj,\
dispatch.obj,\
dlist.obj,\
drawpix.obj,\
enable.obj,\
enums.obj,\
eval.obj,\
extensions.obj,\
feedback.obj,\
fog.obj,\
get.obj,\
hash.obj,\
hint.obj,\
histogram.obj,\
image.obj,\
imports.obj,\
light.obj,\
lines.obj,\
matrix.obj,\
occlude.obj,\
pixel.obj,\
points.obj,\
polygon.obj,\
rastpos.obj,\
state.obj,\
stencil.obj,\
texcompress.obj,\
texcompress_fxt1.obj,\
texcompress_s3tc.obj,\
texformat.obj,\
teximage.obj,\
texobj.obj,\
texstate.obj,\
texstore.obj,\
varray.obj,\
vtxfmt.obj

##### RULES #####

VERSION=Mesa V3.4

##### TARGETS #####
# Make the library
$(LIBDIR)$(GL_LIB) : $(OBJECTS)
  @ $(MAKELIB) $(GL_LIB) $(OBJECTS)
  @ rename $(GL_LIB)* $(LIBDIR)

clean :
	purge
	delete *.obj;*

accum.obj : accum.c
api_arrayelt.obj : api_arrayelt.c
api_loopback.obj : api_loopback.c
api_noop.obj : api_noop.c
api_validate.obj : api_validate.c
attrib.obj : attrib.c
blend.obj : blend.c
bufferobj.obj : bufferobj.c
buffers.obj : buffers.c
clip.obj : clip.c
colortab.obj : colortab.c
context.obj : context.c
convolve.obj : convolve.c
debug.obj : debug.c
depth.obj : depth.c
dispatch.obj : dispatch.c
dlist.obj : dlist.c
drawpix.obj : drawpix.c
enable.obj : enable.c
enums.obj : enums.c
eval.obj : eval.c
extensions.obj : extensions.c
feedback.obj : feedback.c
fog.obj : fog.c
get.obj : get.c
hash.obj : hash.c
hint.obj : hint.c
histogram.obj : histogram.c
image.obj : image.c
imports.obj : imports.c vsnprintf.c
light.obj : light.c
lines.obj : lines.c
matrix.obj : matrix.c
occlude.obj : occlude.c
pixel.obj : pixel.c
points.obj : points.c
polygon.obj : polygon.c
rastpos.obj : rastpos.c
state.obj : state.c
stencil.obj : stencil.c
texcompress.obj : texcompress.c
texcompress_fxt1.obj : texcompress_fxt1.c
	cc$(CFLAGS)/warn=(disable=SHIFTCOUNT) texcompress_fxt1.c
texcompress_s3tc.obj : texcompress_s3tc.c
texformat.obj : texformat.c
teximage.obj : teximage.c
texobj.obj : texobj.c
texstate.obj : texstate.c
texstore.obj : texstore.c
varray.obj : varray.c
vtxfmt.obj : vtxfmt.c
