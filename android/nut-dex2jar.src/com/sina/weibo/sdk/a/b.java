package com.sina.weibo.sdk.a;

import android.os.Bundle;
import android.text.TextUtils;

public final class b
{
  public String a = "";
  public String b = "";
  private String c = "";
  private long d = 0L;
  private String e = "";

  public static b a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      b localb = new b();
      localb.a = a(paramBundle, "uid", "");
      localb.b = a(paramBundle, "access_token", "");
      String str = a(paramBundle, "expires_in", "");
      if ((!TextUtils.isEmpty(str)) && (!str.equals("0")))
        localb.d = (System.currentTimeMillis() + Long.parseLong(str) * 1000L);
      localb.c = a(paramBundle, "refresh_token", "");
      localb.e = a(paramBundle, "phone_num", "");
      return localb;
    }
    return null;
  }

  private static String a(Bundle paramBundle, String paramString1, String paramString2)
  {
    Object localObject = paramString2;
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getString(paramString1);
      localObject = paramString2;
      if (paramBundle != null)
        localObject = paramBundle;
    }
    return localObject;
  }

  public final boolean a()
  {
    return !TextUtils.isEmpty(this.b);
  }

  public final String toString()
  {
    return "uid: " + this.a + ", access_token: " + this.b + ", refresh_token: " + this.c + ", phone_num: " + this.e + ", expires_in: " + Long.toString(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.a.b
 * JD-Core Version:    0.6.2
 */