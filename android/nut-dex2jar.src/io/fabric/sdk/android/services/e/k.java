package io.fabric.sdk.android.services.e;

import io.fabric.sdk.android.services.b.q;
import org.json.JSONException;
import org.json.JSONObject;

final class k
  implements x
{
  public final v a(q paramq, JSONObject paramJSONObject)
    throws JSONException
  {
    int i = paramJSONObject.optInt("settings_version", 0);
    int j = paramJSONObject.optInt("cache_duration", 3600);
    JSONObject localJSONObject = paramJSONObject.getJSONObject("app");
    Object localObject3 = localJSONObject.getString("identifier");
    Object localObject4 = localJSONObject.getString("status");
    Object localObject5 = localJSONObject.getString("url");
    Object localObject6 = localJSONObject.getString("reports_url");
    boolean bool = localJSONObject.optBoolean("update_required", false);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (localJSONObject.has("icon"))
    {
      localObject1 = localObject2;
      if (localJSONObject.getJSONObject("icon").has("hash"))
      {
        localObject1 = localJSONObject.getJSONObject("icon");
        localObject1 = new c(((JSONObject)localObject1).getString("hash"), ((JSONObject)localObject1).getInt("width"), ((JSONObject)localObject1).getInt("height"));
      }
    }
    localObject1 = new e((String)localObject3, (String)localObject4, (String)localObject5, (String)localObject6, bool, (c)localObject1);
    localObject2 = paramJSONObject.getJSONObject("session");
    localObject2 = new p(((JSONObject)localObject2).optInt("log_buffer_size", 64000), ((JSONObject)localObject2).optInt("max_chained_exception_depth", 8), ((JSONObject)localObject2).optInt("max_custom_exception_events", 64), ((JSONObject)localObject2).optInt("max_custom_key_value_pairs", 64), ((JSONObject)localObject2).optInt("identifier_mask", 255), ((JSONObject)localObject2).optBoolean("send_session_without_crash", false));
    localObject3 = paramJSONObject.getJSONObject("prompt");
    localObject3 = new o(((JSONObject)localObject3).optString("title", "Send Crash Report?"), ((JSONObject)localObject3).optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), ((JSONObject)localObject3).optString("send_button_title", "Send"), ((JSONObject)localObject3).optBoolean("show_cancel_button", true), ((JSONObject)localObject3).optString("cancel_button_title", "Don't Send"), ((JSONObject)localObject3).optBoolean("show_always_send_button", true), ((JSONObject)localObject3).optString("always_send_button_title", "Always Send"));
    localObject4 = paramJSONObject.getJSONObject("features");
    localObject4 = new m(((JSONObject)localObject4).optBoolean("prompt_enabled", false), ((JSONObject)localObject4).optBoolean("collect_logged_exceptions", true), ((JSONObject)localObject4).optBoolean("collect_reports", true), ((JSONObject)localObject4).optBoolean("collect_analytics", false));
    localObject5 = paramJSONObject.getJSONObject("analytics");
    localObject5 = new b(((JSONObject)localObject5).optString("url", "https://e.crashlytics.com/spi/v2/events"), ((JSONObject)localObject5).optInt("flush_interval_secs", 600), ((JSONObject)localObject5).optInt("max_byte_size_per_file", 8000), ((JSONObject)localObject5).optInt("max_file_count_per_send", 1), ((JSONObject)localObject5).optInt("max_pending_send_file_count", 100), ((JSONObject)localObject5).optBoolean("track_custom_events", true), ((JSONObject)localObject5).optBoolean("track_predefined_events", true), ((JSONObject)localObject5).optInt("sampling_rate", 1), ((JSONObject)localObject5).optBoolean("flush_on_background", true));
    localObject6 = paramJSONObject.getJSONObject("beta");
    localObject6 = new f(((JSONObject)localObject6).optString("update_endpoint", w.a), ((JSONObject)localObject6).optInt("update_suspend_duration", 3600));
    long l = j;
    if (paramJSONObject.has("expires_at"));
    for (l = paramJSONObject.getLong("expires_at"); ; l = paramq.a() + l * 1000L)
      return new v(l, (e)localObject1, (p)localObject2, (o)localObject3, (m)localObject4, (b)localObject5, (f)localObject6, i, j);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.e.k
 * JD-Core Version:    0.6.2
 */