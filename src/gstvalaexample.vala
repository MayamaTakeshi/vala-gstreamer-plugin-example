const Gst.PluginDesc gst_plugin_desc = {
  1, 10,
  "valaexample",
  "Vala Example plugin",
  plugin_init,
  "0.1",
  "LGPL",
  "https://git.sr.ht/~michalr/vala-gstreamer-plugin-example",
  "Package?",
  "Origin?"
};

public static bool plugin_init (Gst.Plugin p)
{
  Gst.Element.register (p, "valafilter", Gst.Rank.NONE, typeof(Gst.ValaExample.ValaFilter));
  return true;
}

namespace Gst.ValaExample
{
}
