package com.crashlytics.android.a;

import android.os.Build.VERSION;
import android.os.Looper;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.ah;
import io.fabric.sdk.android.services.b.l;
import io.fabric.sdk.android.services.b.y;
import io.fabric.sdk.android.services.c.k;
import io.fabric.sdk.android.services.c.p;
import io.fabric.sdk.android.services.d.a;
import java.io.File;
import java.util.Map;
import java.util.UUID;

final class f
  implements Runnable
{
  f(b paramb)
  {
  }

  public final void run()
  {
    try
    {
      localObject3 = this.a.d;
      Object localObject6 = ((ag)localObject3).b.d();
      localObject4 = ((ag)localObject3).b.c;
      localObject5 = ((ag)localObject3).b.a();
      String str1 = (String)((Map)localObject6).get(y.d);
      String str2 = (String)((Map)localObject6).get(y.g);
      Object localObject7 = ((ag)localObject3).b;
      localObject2 = null;
      Object localObject1 = localObject2;
      if (((io.fabric.sdk.android.services.b.x)localObject7).a)
      {
        localObject7 = ((io.fabric.sdk.android.services.b.x)localObject7).f();
        localObject1 = localObject2;
        if (localObject7 != null)
          localObject1 = Boolean.valueOf(((io.fabric.sdk.android.services.b.b)localObject7).b);
      }
      localObject2 = (String)((Map)localObject6).get(y.c);
      localObject6 = l.k(((ag)localObject3).a);
      localObject7 = io.fabric.sdk.android.services.b.x.a(Build.VERSION.RELEASE) + "/" + io.fabric.sdk.android.services.b.x.a(Build.VERSION.INCREMENTAL);
      String str3 = io.fabric.sdk.android.services.b.x.b();
      localObject1 = new ae((String)localObject4, UUID.randomUUID().toString(), (String)localObject5, str1, str2, (Boolean)localObject1, (String)localObject2, (String)localObject6, (String)localObject7, str3, ((ag)localObject3).c, ((ag)localObject3).d);
      localObject2 = this.a.c;
      if (Looper.myLooper() == Looper.getMainLooper())
        throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
    }
    catch (Exception localException)
    {
      io.fabric.sdk.android.f.b().c("Answers", "Failed to enable events", localException);
      return;
    }
    Object localObject3 = new af();
    Object localObject4 = new ah();
    Object localObject5 = ((i)localObject2).b.a();
    localObject5 = new p(((i)localObject2).a, (File)localObject5, "session_analytics.tap", "session_analytics_to_send");
    Object localObject2 = new x(((i)localObject2).a, (af)localObject3, (io.fabric.sdk.android.services.b.q)localObject4, (k)localObject5);
    ((x)localObject2).a(this.a);
    this.a.g = new q(this.a.a, this.a.b, this.a.f, (x)localObject2, this.a.e, localException);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.f
 * JD-Core Version:    0.6.2
 */