package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

public final class x
{
  private static String[] a = new String[2];

  public static String[] a(Context paramContext)
  {
    Object localObject2 = null;
    if ((!TextUtils.isEmpty(a[0])) && (!TextUtils.isEmpty(a[1])))
      localObject1 = a;
    do
    {
      return localObject1;
      localObject1 = localObject2;
    }
    while (paramContext == null);
    aa.a(paramContext);
    paramContext = aa.g();
    Object localObject1 = paramContext.getString("au_p", null);
    String str = paramContext.getString("au_u", null);
    if ((localObject1 != null) && (str != null))
    {
      paramContext = new String[2];
      paramContext[0] = localObject1;
      paramContext[1] = str;
    }
    while (true)
    {
      localObject1 = localObject2;
      if (paramContext == null)
        break;
      a[0] = paramContext[0];
      a[1] = paramContext[1];
      return a;
      paramContext = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.x
 * JD-Core Version:    0.6.2
 */