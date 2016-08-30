package com.nut.blehunter.ui;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import org.json.JSONObject;

final class a extends i
{
  a(AboutNutActivity paramAboutNutActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    com.nut.blehunter.ui.b.a.k.b(this.a);
    e.a(this.a, paramApiError.errorCode, paramApiError.errorMsg);
  }

  public final void a(String paramString)
  {
    com.nut.blehunter.ui.b.a.k.b(this.a);
    Object localObject = com.nut.blehunter.rxApi.a.b(paramString);
    String str = ((JSONObject)localObject).optString("versionName");
    localObject = ((JSONObject)localObject).optString("versionCode");
    try
    {
      i = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionCode;
      if (Integer.parseInt((String)localObject) > i)
      {
        b.a.a.b("versionName is %s Code is %s", new Object[] { str, localObject });
        com.nut.blehunter.d.k.a(this.a, "version_info", paramString);
        this.a.s();
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        int i = 0;
      }
      n.a(this.a, 2131099942);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a
 * JD-Core Version:    0.6.2
 */