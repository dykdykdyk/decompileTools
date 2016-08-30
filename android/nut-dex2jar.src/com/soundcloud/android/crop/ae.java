package com.soundcloud.android.crop;

import android.graphics.Bitmap;

final class ae
{
  Bitmap a;
  int b;

  public ae(Bitmap paramBitmap, int paramInt)
  {
    this.a = paramBitmap;
    this.b = (paramInt % 360);
  }

  private boolean d()
  {
    return this.b / 90 % 2 != 0;
  }

  public final int a()
  {
    if (this.a == null)
      return 0;
    if (d())
      return this.a.getWidth();
    return this.a.getHeight();
  }

  public final int b()
  {
    if (this.a == null)
      return 0;
    if (d())
      return this.a.getHeight();
    return this.a.getWidth();
  }

  public final void c()
  {
    if (this.a != null)
    {
      this.a.recycle();
      this.a = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.ae
 * JD-Core Version:    0.6.2
 */