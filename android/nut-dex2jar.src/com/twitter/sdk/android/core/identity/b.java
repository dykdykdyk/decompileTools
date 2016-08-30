package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.concurrent.atomic.AtomicReference;

public final class b
{
  public final AtomicReference<a> a = new AtomicReference(null);

  public final boolean a()
  {
    return this.a.get() != null;
  }

  public final boolean a(Activity paramActivity, a parama)
  {
    boolean bool1 = false;
    if (a())
      f.b().d("Twitter", "Authorize already in progress");
    boolean bool2;
    do
    {
      do
        return bool1;
      while (!parama.a(paramActivity));
      bool2 = this.a.compareAndSet(null, parama);
      bool1 = bool2;
    }
    while (bool2);
    f.b().d("Twitter", "Failed to update authHandler, authorize already in progress.");
    return bool2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.b
 * JD-Core Version:    0.6.2
 */