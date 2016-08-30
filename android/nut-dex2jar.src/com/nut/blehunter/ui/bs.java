package com.nut.blehunter.ui;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso.LoadedFrom;
import com.squareup.picasso.Target;

final class bs
  implements Target
{
  bs(MapLocationActivity paramMapLocationActivity)
  {
  }

  public final void onBitmapFailed(Drawable paramDrawable)
  {
  }

  public final void onBitmapLoaded(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    MapLocationActivity.a(this.a, paramBitmap);
  }

  public final void onPrepareLoad(Drawable paramDrawable)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bs
 * JD-Core Version:    0.6.2
 */