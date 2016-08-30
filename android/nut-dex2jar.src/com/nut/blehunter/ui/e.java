package com.nut.blehunter.ui;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.nut.blehunter.d.k;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import org.json.JSONObject;

final class e extends i
{
  e(b paramb)
  {
  }

  public final void a(ApiError paramApiError)
  {
  }

  public final void a(String paramString)
  {
    int i = 0;
    Object localObject = a.b(paramString);
    ((JSONObject)localObject).optString("versionName");
    localObject = ((JSONObject)localObject).optString("versionCode");
    try
    {
      int j = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionCode;
      i = j;
      if (Integer.parseInt((String)localObject) > i)
      {
        k.a(this.a, "version_info", paramString);
        this.a.s();
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.e
 * JD-Core Version:    0.6.2
 */