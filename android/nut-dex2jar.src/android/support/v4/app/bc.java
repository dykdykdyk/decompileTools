package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;

final class bc extends bb
{
  public final Intent a(Activity paramActivity)
  {
    Intent localIntent2 = paramActivity.getParentActivityIntent();
    Intent localIntent1 = localIntent2;
    if (localIntent2 == null)
      localIntent1 = super.a(paramActivity);
    return localIntent1;
  }

  public final String a(Context paramContext, ActivityInfo paramActivityInfo)
  {
    String str2 = paramActivityInfo.parentActivityName;
    String str1 = str2;
    if (str2 == null)
      str1 = super.a(paramContext, paramActivityInfo);
    return str1;
  }

  public final boolean a(Activity paramActivity, Intent paramIntent)
  {
    return paramActivity.shouldUpRecreateTask(paramIntent);
  }

  public final void b(Activity paramActivity, Intent paramIntent)
  {
    paramActivity.navigateUpTo(paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.bc
 * JD-Core Version:    0.6.2
 */