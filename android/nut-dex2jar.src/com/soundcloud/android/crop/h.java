package com.soundcloud.android.crop;

import android.graphics.Bitmap;

final class h
  implements Runnable
{
  h(CropImageActivity paramCropImageActivity, Bitmap paramBitmap)
  {
  }

  public final void run()
  {
    CropImageActivity.b(this.b).a();
    this.a.recycle();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.h
 * JD-Core Version:    0.6.2
 */