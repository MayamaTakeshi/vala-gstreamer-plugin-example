namespace Gst.ValaExample
{
  public class ValaFilter : Gst.Base.Transform
  {
    protected static Gst.StaticCaps sink_caps = {
      null,
      """video/x-raw"""
    };
    protected static Gst.StaticCaps src_caps = {
      null,
      """video/x-raw"""
    };
    protected static Gst.StaticPadTemplate sink_template = {
      "sink",
      Gst.PadDirection.SINK,
      Gst.PadPresence.REQUEST,
      sink_caps
    };
    protected static Gst.StaticPadTemplate src_template = {
      "src",
      Gst.PadDirection.SRC,
      Gst.PadPresence.ALWAYS,
      src_caps
    };

    static construct {
      set_static_metadata (
        "valafilter",
        "Filter",
        "Example Vala video filter.",
        "michal.rudowicz@fl9.eu");

      add_static_pad_template (sink_template);
      add_static_pad_template (src_template);
    }

    uint counter = 0;

    public override Gst.FlowReturn transform_ip (Gst.Buffer buf) {
      gst_log_obj(this, "Frame # %u", counter);
      counter += 1;
      return Gst.FlowReturn.OK;
    }
  }
}

