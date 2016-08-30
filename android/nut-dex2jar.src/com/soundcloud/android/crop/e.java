package com.soundcloud.android.crop;

import android.os.Handler;
import java.util.concurrent.CountDownLatch;

final class e
  implements Runnable
{
  e(CropImageActivity paramCropImageActivity)
  {
  }

  public final void run()
  {
    Object localObject = new CountDownLatch(1);
    CropImageActivity.c(this.a).post(new f(this, (CountDownLatch)localObject));
    try
    {
      ((CountDownLatch)localObject).await();
      localObject = new i(this.a, (byte)0);
      CropImageActivity.c(((i)localObject).a).post(new j((i)localObject));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new RuntimeException(localInterruptedException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.e
 * JD-Core Version:    0.6.2
 */