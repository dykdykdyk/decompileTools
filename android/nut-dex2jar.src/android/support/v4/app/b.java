package android.support.v4.app;

import android.app.Activity;
import android.content.pm.PackageManager;

final class b
  implements Runnable
{
  b(String[] paramArrayOfString, Activity paramActivity, int paramInt)
  {
  }

  public final void run()
  {
    int[] arrayOfInt = new int[this.a.length];
    PackageManager localPackageManager = this.b.getPackageManager();
    String str = this.b.getPackageName();
    int j = this.a.length;
    int i = 0;
    while (i < j)
    {
      arrayOfInt[i] = localPackageManager.checkPermission(this.a[i], str);
      i += 1;
    }
    ((c)this.b).onRequestPermissionsResult(this.c, this.a, arrayOfInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.b
 * JD-Core Version:    0.6.2
 */