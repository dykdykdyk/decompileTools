package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

class ImageViewAction extends Action<ImageView>
{
  Callback callback;

  ImageViewAction(Picasso paramPicasso, ImageView paramImageView, Request paramRequest, int paramInt1, int paramInt2, int paramInt3, Drawable paramDrawable, String paramString, Object paramObject, Callback paramCallback, boolean paramBoolean)
  {
    super(paramPicasso, paramImageView, paramRequest, paramInt1, paramInt2, paramInt3, paramDrawable, paramString, paramObject, paramBoolean);
    this.callback = paramCallback;
  }

  void cancel()
  {
    super.cancel();
    if (this.callback != null)
      this.callback = null;
  }

  public void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    if (paramBitmap == null)
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    ImageView localImageView = (ImageView)this.target.get();
    if (localImageView == null);
    do
    {
      return;
      Context localContext = this.picasso.context;
      boolean bool = this.picasso.indicatorsEnabled;
      PicassoDrawable.setBitmap(localImageView, localContext, paramBitmap, paramLoadedFrom, this.noFade, bool);
    }
    while (this.callback == null);
    this.callback.onSuccess();
  }

  public void error()
  {
    ImageView localImageView = (ImageView)this.target.get();
    if (localImageView == null);
    while (true)
    {
      return;
      if (this.errorResId != 0)
        localImageView.setImageResource(this.errorResId);
      while (this.callback != null)
      {
        this.callback.onError();
        return;
        if (this.errorDrawable != null)
          localImageView.setImageDrawable(this.errorDrawable);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.ImageViewAction
 * JD-Core Version:    0.6.2
 */