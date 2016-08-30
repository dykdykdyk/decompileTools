package io.fabric.sdk.android;

import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import java.util.HashSet;
import java.util.Set;

public final class b
{
  public final Set<Application.ActivityLifecycleCallbacks> a = new HashSet();
  public final Application b;

  b(Application paramApplication)
  {
    this.b = paramApplication;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.b
 * JD-Core Version:    0.6.2
 */