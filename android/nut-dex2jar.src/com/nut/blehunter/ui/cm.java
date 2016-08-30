package com.nut.blehunter.ui;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso.LoadedFrom;
import com.squareup.picasso.Target;

final class cm
  implements Target
{
  cm(NutDetailActivity paramNutDetailActivity)
  {
  }

  public final void onBitmapFailed(Drawable paramDrawable)
  {
    NutDetailActivity.a(this.a, false);
  }

  public final void onBitmapLoaded(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    if (paramBitmap != null)
    {
      NutDetailActivity.a(this.a, true);
      NutDetailActivity.a(this.a, NutDetailActivity.a(this.a), paramBitmap);
      NutDetailActivity.b(this.a);
      NutDetailActivity.c(this.a);
    }
  }

  public final void onPrepareLoad(Drawable paramDrawable)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cm
 * JD-Core Version:    0.6.2
 */