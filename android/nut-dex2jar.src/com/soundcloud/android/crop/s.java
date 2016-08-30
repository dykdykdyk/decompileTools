package com.soundcloud.android.crop;

import android.os.Handler;

final class s
  implements Runnable
{
  s(q paramq, long paramLong, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis();
    float f1 = Math.min(this.a, (float)(l - this.b));
    float f2 = this.c;
    float f3 = this.d;
    this.g.a(f2 + f3 * f1, this.e, this.f);
    if (f1 < this.a)
      this.g.j.post(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.s
 * JD-Core Version:    0.6.2
 */