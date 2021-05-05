gstvalaexample_sources = [
  'gstvalaexample.vala',
  'valafilter.vala',
]

gstvalaexample_deps = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
  dependency('gstreamer-1.0'),
  dependency('gstreamer-base-1.0'),
  dependency('gstreamer-video-1.0'),
]

library('gstvalaexample', gstvalaexample_sources,
  vala_args: '--target-glib=2.58',  dependencies: gstvalaexample_deps,
  install: true,
)
