package com.baidu.android.pushservice.i.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.baidu.android.pushservice.j.c;
import org.json.JSONException;
import org.json.JSONObject;

class b$b
{
  private static b c = null;
  private Context a = null;
  private final JSONObject b;

  private b$b(Context paramContext)
  {
    this.a = paramContext;
    this.b = new JSONObject();
    try
    {
      this.b.put("os_name", "Android");
      this.b.put("manufacture", Build.MANUFACTURER);
      this.b.put("os_version", Build.VERSION.RELEASE);
      this.b.put("model", Build.MODEL);
      this.b.put("firmware", Build.FINGERPRINT);
      this.b.put("mem_size", String.valueOf(b.b()));
      this.b.put("screen_width", String.valueOf(b.a(this.a)[0]));
      this.b.put("screen_height", String.valueOf(b.a(this.a)[1]));
      this.b.put("cpu_model", b.c());
      this.b.put("cpu_feature", b.d());
      this.b.put("screen_density", String.valueOf(b.a(this.a)[2]));
      if ((TelephonyManager)this.a.getSystemService("phone") != null)
        this.b.put("wise_cuid", c.a(this.a));
      Object localObject2 = paramContext.getSharedPreferences("pst", 0).getString("push_mac_id", null);
      Object localObject1;
      if (localObject2 != null)
      {
        int i = ((String)localObject2).length();
        localObject1 = localObject2;
        if (i != 0)
          break label338;
      }
      try
      {
        String str = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        localObject1 = str;
        if (str != null)
        {
          localObject1 = str;
          localObject2 = str;
          if (str.length() > 0)
          {
            localObject2 = str;
            paramContext.getSharedPreferences("pst", 0).edit().putString("push_mac_id", str).commit();
            localObject1 = str;
          }
        }
        label338: if ((localObject1 != null) && (localObject1.length() > 0))
        {
          this.b.put("mac_id", localObject1);
          return;
        }
      }
      catch (Exception paramContext)
      {
        while (true)
        {
          Log.e("StatUtils", "Exception " + paramContext.getMessage());
          localObject1 = localObject2;
        }
      }
    }
    catch (JSONException paramContext)
    {
      Log.e("StatUtils", "error " + paramContext.getMessage());
    }
  }

  public static b a(Context paramContext)
  {
    try
    {
      if (c == null)
        c = new b(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public JSONObject a()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.a.b.b
 * JD-Core Version:    0.6.2
 */