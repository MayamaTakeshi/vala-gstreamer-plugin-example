# GStreamer plugin Vala example

A boilerplate and an example of how to make a GStreamer plugin in Vala.

[![builds.sr.ht status](https://builds.sr.ht/~michalr/vala-gstreamer-plugin-example.svg)](https://builds.sr.ht/~michalr/vala-gstreamer-plugin-example?)

Currently contains:

 * Build system based on Meson,
 * An example plugin boilerplate consisting of:
   * Example in-place filter element that doesn't do anything useful

## Building

```
mkdir build && cd build
meson ..
ninja
```

### Testing it without actually installing it (because what for?)

```
cd build
GST_PLUGIN_PATH=src/ gst-launch-1.0 videotestsrc ! valafilter ! autovideosink
```

## Missing pieces

 * GST_DEBUG category
 * Example Sink and Source GStreamer elements

