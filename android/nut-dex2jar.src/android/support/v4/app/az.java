package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.support.v4.b.b;

public final class az
{
  private static final ba a = new bb();

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new bc();
      return;
    }
  }

  public static Intent a(Activity paramActivity)
  {
    return a.a(paramActivity);
  }

  public static Intent a(Context paramContext, ComponentName paramComponentName)
    throws PackageManager.NameNotFoundException
  {
    String str = b(paramContext, paramComponentName);
    if (str == null)
      return null;
    paramComponentName = new ComponentName(paramComponentName.getPackageName(), str);
    if (b(paramContext, paramComponentName) == null)
      return b.a(paramComponentName);
    return new Intent().setComponent(paramComponentName);
  }

  public static boolean a(Activity paramActivity, Intent paramIntent)
  {
    return a.a(paramActivity, paramIntent);
  }

  public static String b(Activity paramActivity)
  {
    try
    {
      paramActivity = b(paramActivity, paramActivity.getComponentName());
      return paramActivity;
    }
    catch (PackageManager.NameNotFoundException paramActivity)
    {
    }
    throw new IllegalArgumentException(paramActivity);
  }

  public static String b(Context paramContext, ComponentName paramComponentName)
    throws PackageManager.NameNotFoundException
  {
    paramComponentName = paramContext.getPackageManager().getActivityInfo(paramComponentName, 128);
    return a.a(paramContext, paramComponentName);
  }

  public static void b(Activity paramActivity, Intent paramIntent)
  {
    a.b(paramActivity, paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.az
 * JD-Core Version:    0.6.2
 */