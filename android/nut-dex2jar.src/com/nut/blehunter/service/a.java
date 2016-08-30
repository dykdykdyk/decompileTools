package com.nut.blehunter.service;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class a
{
  Map<String, Boolean> a = new HashMap();
  Map<String, Boolean> b = new HashMap();
  private Map<String, Boolean> c = new HashMap();

  public final void a(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.a.put(paramString, Boolean.valueOf(true));
      return;
    case 2:
      this.c.put(paramString, Boolean.valueOf(true));
      return;
    case 3:
    }
    this.b.put(paramString, Boolean.valueOf(true));
  }

  public final void b(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.a.put(paramString, Boolean.valueOf(false));
      return;
    case 2:
      this.c.put(paramString, Boolean.valueOf(false));
      return;
    case 3:
    }
    this.b.put(paramString, Boolean.valueOf(false));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.a
 * JD-Core Version:    0.6.2
 */