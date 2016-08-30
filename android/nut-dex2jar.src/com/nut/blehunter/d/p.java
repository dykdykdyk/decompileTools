package com.nut.blehunter.d;

import android.text.TextUtils;
import b.a.a;

public final class p
{
  public static int a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return 0;
    int j = 0;
    int i = 0;
    if (j < paramString.length())
    {
      int k = Character.codePointAt(paramString, j);
      if ((k >= 0) && (k <= 255))
        i += 1;
      while (true)
      {
        j += 1;
        break;
        i += 2;
      }
    }
    a.b("计算混合字符串长度＝" + i, new Object[0]);
    return i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.p
 * JD-Core Version:    0.6.2
 */