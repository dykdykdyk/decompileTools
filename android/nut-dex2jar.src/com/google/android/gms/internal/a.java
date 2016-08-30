package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;

@TargetApi(14)
public final class a
  implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2
{
  private static final a a = new a();
  private final AtomicBoolean b = new AtomicBoolean();
  private boolean c;

  public static void a(Application paramApplication)
  {
    paramApplication.registerActivityLifecycleCallbacks(a);
    paramApplication.registerComponentCallbacks(a);
    a.c = true;
  }

  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    if (this.b.compareAndSet(true, false))
      com.google.firebase.a.a();
  }

  public final void onActivityDestroyed(Activity paramActivity)
  {
  }

  public final void onActivityPaused(Activity paramActivity)
  {
  }

  public final void onActivityResumed(Activity paramActivity)
  {
    if (this.b.compareAndSet(true, false))
      com.google.firebase.a.a();
  }

  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
  }

  public final void onActivityStarted(Activity paramActivity)
  {
  }

  public final void onActivityStopped(Activity paramActivity)
  {
  }

  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
  }

  public final void onLowMemory()
  {
  }

  public final void onTrimMemory(int paramInt)
  {
    if ((paramInt == 20) && (this.b.compareAndSet(false, true)))
      com.google.firebase.a.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.a
 * JD-Core Version:    0.6.2
 */