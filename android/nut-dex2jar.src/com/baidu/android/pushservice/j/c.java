package com.baidu.android.pushservice.j;

import android.content.Context;
import android.text.TextUtils;

public class c
{
  private static final String a = c.class.getSimpleName();

  public static String a(Context paramContext)
  {
    String str2 = b(paramContext);
    String str1 = d.b(paramContext);
    paramContext = str1;
    if (TextUtils.isEmpty(str1))
      paramContext = "0";
    paramContext = new StringBuffer(paramContext).reverse().toString();
    return str2 + "|" + paramContext;
  }

  private static String b(Context paramContext)
  {
    return d.a(paramContext);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.j.c
 * JD-Core Version:    0.6.2
 */