package com.squareup.picasso;

import android.graphics.Bitmap;

class FetchAction extends Action<Object>
{
  private Callback callback;
  private final Object target = new Object();

  FetchAction(Picasso paramPicasso, Request paramRequest, int paramInt1, int paramInt2, Object paramObject, String paramString, Callback paramCallback)
  {
    super(paramPicasso, null, paramRequest, paramInt1, paramInt2, 0, null, paramString, paramObject, false);
    this.callback = paramCallback;
  }

  void cancel()
  {
    super.cancel();
    this.callback = null;
  }

  void complete(Bitmap paramBitmap, Picasso.LoadedFrom paramLoadedFrom)
  {
    if (this.callback != null)
      this.callback.onSuccess();
  }

  void error()
  {
    if (this.callback != null)
      this.callback.onError();
  }

  Object getTarget()
  {
    return this.target;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.FetchAction
 * JD-Core Version:    0.6.2
 */