package com.nut.blehunter.rxApi;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.d.m;
import java.io.IOException;
import okhttp3.ag;
import okhttp3.ah;
import okhttp3.at;
import okhttp3.au;
import okhttp3.az;

public class h
  implements ag
{
  private static String a(String paramString)
  {
    String str = NutTrackerApplication.a().getPackageName();
    PackageInfo localPackageInfo = NutTrackerApplication.a().b();
    if (localPackageInfo == null)
      return str;
    return str + "/" + localPackageInfo.versionCode + "/" + localPackageInfo.versionName + "/" + paramString + "/" + Build.VERSION.RELEASE;
  }

  public final az a(ah paramah)
    throws IOException
  {
    au localau = paramah.a().a();
    localau.b("Content-Type", "application/json").b("Country", m.a(NutTrackerApplication.a())).b("Accept-Language", m.b(NutTrackerApplication.a()));
    try
    {
      String str2 = Build.MODEL;
      String str1 = str2;
      if (!str2.startsWith(Build.MANUFACTURER))
        str1 = Build.MANUFACTURER + " " + str2;
      localau.b("User-Agent", a(str1));
      a(localau);
      return paramah.a(localau.a());
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        localIllegalArgumentException.printStackTrace();
        localau.b("User-Agent", a("unknown"));
      }
    }
  }

  protected void a(au paramau)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.h
 * JD-Core Version:    0.6.2
 */