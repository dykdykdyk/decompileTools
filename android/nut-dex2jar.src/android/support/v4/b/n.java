package android.support.v4.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.support.v4.app.f;

public final class n
{
  public static int a(Context paramContext, String paramString)
  {
    int i = Process.myPid();
    int j = Process.myUid();
    String str1 = paramContext.getPackageName();
    if (paramContext.checkPermission(paramString, i, j) == -1)
      return -1;
    String str2 = f.a(paramString);
    if (str2 != null)
    {
      paramString = str1;
      if (str1 == null)
      {
        paramString = paramContext.getPackageManager().getPackagesForUid(j);
        if ((paramString == null) || (paramString.length <= 0))
          return -1;
        paramString = paramString[0];
      }
      if (f.a(paramContext, str2, paramString) != 0)
        return -2;
    }
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.b.n
 * JD-Core Version:    0.6.2
 */