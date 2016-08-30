package com.nut.blehunter;

import android.text.TextUtils;
import com.nut.blehunter.a.c;
import com.nut.blehunter.a.e;
import java.util.Map;

public final class u
{
  public static void a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return;
    c.a().a(paramString1, paramString2).a();
  }

  public static void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return;
    e locale = c.a().a(paramString1, paramString2);
    if (((!TextUtils.isEmpty(paramString1)) || (!TextUtils.isEmpty(paramString2))) && ((!TextUtils.isEmpty(paramString3)) || (!TextUtils.isEmpty(paramString4))))
      locale.d.put(paramString3, paramString4);
    locale.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.u
 * JD-Core Version:    0.6.2
 */