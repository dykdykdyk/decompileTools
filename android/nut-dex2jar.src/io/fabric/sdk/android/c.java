package io.fabric.sdk.android;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class c
  implements Application.ActivityLifecycleCallbacks
{
  c(b paramb, d paramd)
  {
  }

  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    this.a.a(paramActivity);
  }

  public final void onActivityDestroyed(Activity paramActivity)
  {
  }

  public final void onActivityPaused(Activity paramActivity)
  {
    this.a.d(paramActivity);
  }

  public final void onActivityResumed(Activity paramActivity)
  {
    this.a.c(paramActivity);
  }

  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
  }

  public final void onActivityStarted(Activity paramActivity)
  {
    this.a.b(paramActivity);
  }

  public final void onActivityStopped(Activity paramActivity)
  {
    this.a.e(paramActivity);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.c
 * JD-Core Version:    0.6.2
 */