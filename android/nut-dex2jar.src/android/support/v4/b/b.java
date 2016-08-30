package android.support.v4.b;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public final class b
{
  private static final c a = new d();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      a = new f();
      return;
    }
    if (i >= 11)
    {
      a = new e();
      return;
    }
  }

  public static Intent a(ComponentName paramComponentName)
  {
    return a.a(paramComponentName);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.b.b
 * JD-Core Version:    0.6.2
 */