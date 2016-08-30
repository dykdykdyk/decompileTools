package com.tencent.open.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.open.a.h;
import java.lang.ref.WeakReference;
import java.net.URL;

public final class n
{
  private static n a = null;
  private volatile WeakReference<SharedPreferences> b = null;

  public static n a()
  {
    try
    {
      if (a == null)
        a = new n();
      n localn = a;
      return localn;
    }
    finally
    {
    }
  }

  public final String a(Context paramContext, String paramString)
  {
    if ((this.b == null) || (this.b.get() == null))
      this.b = new WeakReference(paramContext.getSharedPreferences("ServerPrefs", 0));
    paramContext = paramString;
    String str1;
    String str2;
    try
    {
      str1 = new URL(paramString).getHost();
      if (str1 == null)
      {
        paramContext = paramString;
        h.e("openSDK_LOG.ServerSetting", "Get host error. url=" + paramString);
        return paramString;
      }
      paramContext = paramString;
      str2 = ((SharedPreferences)this.b.get()).getString(str1, null);
      if (str2 != null)
      {
        paramContext = paramString;
        if (!str1.equals(str2));
      }
      else
      {
        paramContext = paramString;
        h.a("openSDK_LOG.ServerSetting", "host=" + str1 + ", envHost=" + str2);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      h.e("openSDK_LOG.ServerSetting", "getEnvUrl url=" + paramContext + "error.: " + paramString.getMessage());
      return paramContext;
    }
    paramContext = paramString;
    paramString = paramString.replace(str1, str2);
    paramContext = paramString;
    h.a("openSDK_LOG.ServerSetting", "return environment url : " + paramString);
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.n
 * JD-Core Version:    0.6.2
 */