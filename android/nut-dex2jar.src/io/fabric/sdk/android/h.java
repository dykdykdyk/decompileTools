package io.fabric.sdk.android;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

final class h
  implements l
{
  final CountDownLatch a = new CountDownLatch(this.b);

  h(f paramf, int paramInt)
  {
  }

  public final void a()
  {
    this.a.countDown();
    if (this.a.getCount() == 0L)
    {
      f.a(this.c).set(true);
      f.b(this.c).a();
    }
  }

  public final void a(Exception paramException)
  {
    f.b(this.c).a(paramException);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.h
 * JD-Core Version:    0.6.2
 */