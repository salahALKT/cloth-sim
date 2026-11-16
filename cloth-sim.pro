TEMPLATE = subdirs

SUBDIRS += \
   general \
   Qt_GL \
   text

# Both programs link against the physics library in general/,
# so it must be built first (otherwise `make -j` fails).
Qt_GL.depends = general
text.depends = general
