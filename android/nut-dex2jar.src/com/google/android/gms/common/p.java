package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.b;

public class p
{
  private static p b;
  public final Context a;

  private p(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  static i a(PackageInfo paramPackageInfo, i[] paramArrayOfi)
  {
    if (paramPackageInfo.signatures == null)
      return null;
    if (paramPackageInfo.signatures.length != 1)
    {
      Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
      return null;
    }
    j localj = new j(paramPackageInfo.signatures[0].toByteArray());
    int i = 0;
    while (i < paramArrayOfi.length)
    {
      if (paramArrayOfi[i].equals(localj))
        return paramArrayOfi[i];
      i += 1;
    }
    paramPackageInfo = String.valueOf(paramPackageInfo.packageName);
    paramArrayOfi = String.valueOf(Base64.encodeToString(localj.c(), 0));
    Log.v("GoogleSignatureVerifier", String.valueOf(paramPackageInfo).length() + 31 + String.valueOf(paramArrayOfi).length() + paramPackageInfo + " signature not valid.  Found: \n" + paramArrayOfi);
    return null;
  }

  public static p a(Context paramContext)
  {
    b.a(paramContext);
    try
    {
      if (b == null)
      {
        h.a(paramContext);
        b = new p(paramContext);
      }
      return b;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static boolean a(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    if ((paramPackageInfo != null) && (paramPackageInfo.signatures != null))
    {
      if (paramBoolean);
      for (paramPackageInfo = a(paramPackageInfo, l.a); paramPackageInfo != null; paramPackageInfo = a(paramPackageInfo, new i[] { l.a[0] }))
        return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.p
 * JD-Core Version:    0.6.2
 */