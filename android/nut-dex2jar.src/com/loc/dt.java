package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import java.lang.reflect.Method;
import org.json.JSONObject;

public final class dt
{
  static dt c;
  Context a;
  String b = null;
  SharedPreferences d = null;
  SharedPreferences.Editor e = null;
  Method f;

  dt(Context paramContext)
  {
    this.a = paramContext;
    if (this.b == null)
      this.b = bf.a("MD5", this.a.getPackageName());
  }

  public final AMapLocation a()
  {
    if (this.a == null);
    SharedPreferences localSharedPreferences;
    do
    {
      return null;
      localSharedPreferences = this.a.getSharedPreferences("pref", 0);
    }
    while (localSharedPreferences == null);
    String str = "lastfix" + dp.f;
    if (localSharedPreferences.contains(str));
    while (true)
    {
      try
      {
        localObject1 = localSharedPreferences.getString(str, null);
        if (localObject1 != null)
        {
          localObject1 = new String(bf.d(ej.a((String)localObject1), this.b), "UTF-8");
          if (TextUtils.isEmpty((CharSequence)localObject1))
            break;
        }
      }
      catch (Exception localException1)
      {
        try
        {
          Object localObject1 = dp.a(new JSONObject((String)localObject1));
          return localObject1;
          localException1 = localException1;
          localSharedPreferences.edit().remove(str).commit();
          Object localObject2 = null;
        }
        catch (Exception localException2)
        {
          return null;
        }
      }
      continue;
      Object localObject3 = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dt
 * JD-Core Version:    0.6.2
 */