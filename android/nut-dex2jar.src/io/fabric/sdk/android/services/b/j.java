package io.fabric.sdk.android.services.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

public final class j
{
  public static String a(Context paramContext)
  {
    String str2 = b(paramContext);
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str1 = null;
      int j = l.a(paramContext, "io.fabric.ApiKey", "string");
      int i = j;
      if (j == 0)
      {
        f.b().a("Fabric", "Falling back to Crashlytics key lookup from Strings");
        i = l.a(paramContext, "com.crashlytics.ApiKey", "string");
      }
      if (i != 0)
        str1 = paramContext.getResources().getString(i);
    }
    if (TextUtils.isEmpty(str1))
    {
      if ((f.c()) || (l.h(paramContext)))
        throw new IllegalArgumentException("Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
      f.b().e("Fabric", "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
    }
    return str1;
  }

  private static String b(Context paramContext)
  {
    String str2 = null;
    Object localObject1 = null;
    String str1 = str2;
    try
    {
      Object localObject2 = paramContext.getPackageName();
      str1 = str2;
      localObject2 = paramContext.getPackageManager().getApplicationInfo((String)localObject2, 128).metaData;
      paramContext = localObject1;
      if (localObject2 != null)
      {
        str1 = str2;
        str2 = ((Bundle)localObject2).getString("io.fabric.ApiKey");
        paramContext = str2;
        if (str2 == null)
        {
          str1 = str2;
          f.b().a("Fabric", "Falling back to Crashlytics key lookup from Manifest");
          str1 = str2;
          paramContext = ((Bundle)localObject2).getString("com.crashlytics.ApiKey");
        }
      }
      return paramContext;
    }
    catch (Exception paramContext)
    {
      f.b().a("Fabric", "Caught non-fatal exception while retrieving apiKey: " + paramContext);
    }
    return str1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.j
 * JD-Core Version:    0.6.2
 */