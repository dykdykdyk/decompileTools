package com.google.android.gms.common.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.o;
import com.google.android.gms.common.p;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ai;

public final class h
{
  public static boolean a(Context paramContext, int paramInt)
  {
    boolean bool1 = false;
    if (!ai.a(paramContext).a(paramInt, "com.google.android.gms"));
    Object localObject;
    label88: boolean bool2;
    do
    {
      do
      {
        do
          while (true)
          {
            return bool1;
            localObject = paramContext.getPackageManager();
            try
            {
              localObject = ((PackageManager)localObject).getPackageInfo("com.google.android.gms", 64);
              p localp = p.a(paramContext);
              paramContext.getPackageManager();
              if (localObject != null)
              {
                if (!o.zzal(localp.a))
                  break label88;
                return p.a((PackageInfo)localObject, true);
              }
            }
            catch (PackageManager.NameNotFoundException paramContext)
            {
            }
          }
        while (!Log.isLoggable("UidVerifier", 3));
        Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
        return false;
        bool2 = p.a((PackageInfo)localObject, false);
        bool1 = bool2;
      }
      while (bool2);
      bool1 = bool2;
    }
    while (!p.a((PackageInfo)localObject, true));
    Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
    return bool2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.b.h
 * JD-Core Version:    0.6.2
 */