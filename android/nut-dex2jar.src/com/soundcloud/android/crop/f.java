package com.soundcloud.android.crop;

import java.util.concurrent.CountDownLatch;

final class f
  implements Runnable
{
  f(e parame, CountDownLatch paramCountDownLatch)
  {
  }

  public final void run()
  {
    if (CropImageActivity.b(this.b.a).getScale() == 1.0F)
      CropImageActivity.b(this.b.a).b();
    this.a.countDown();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.f
 * JD-Core Version:    0.6.2
 */