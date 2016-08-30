package com.soundcloud.android.crop;

import android.graphics.Bitmap;

final class b
  implements t
{
  b(CropImageActivity paramCropImageActivity)
  {
  }

  public final void a(Bitmap paramBitmap)
  {
    paramBitmap.recycle();
    System.gc();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.b
 * JD-Core Version:    0.6.2
 */