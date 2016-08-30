package com.nut.blehunter.ble;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class q
{
  public Map<String, Boolean> a = new HashMap();
  public Map<String, Long> b = new HashMap();

  public final void a(String paramString, boolean paramBoolean)
  {
    if ((!TextUtils.isEmpty(paramString)) && (this.a != null))
      this.a.put(paramString, Boolean.valueOf(paramBoolean));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.q
 * JD-Core Version:    0.6.2
 */