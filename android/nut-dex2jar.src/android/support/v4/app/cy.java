package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public final class cy
  implements Iterable<Intent>
{
  private static final da c = new db();
  public final ArrayList<Intent> a = new ArrayList();
  public final Context b;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      c = new dc();
      return;
    }
  }

  private cy(Context paramContext)
  {
    this.b = paramContext;
  }

  public static cy a(Context paramContext)
  {
    return new cy(paramContext);
  }

  public final cy a(ComponentName paramComponentName)
  {
    int i = this.a.size();
    try
    {
      for (paramComponentName = az.a(this.b, paramComponentName); paramComponentName != null; paramComponentName = az.a(this.b, paramComponentName.getComponent()))
        this.a.add(i, paramComponentName);
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(paramComponentName);
    }
    return this;
  }

  public final Iterator<Intent> iterator()
  {
    return this.a.iterator();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.cy
 * JD-Core Version:    0.6.2
 */