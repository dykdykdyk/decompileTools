package com.facebook.internal;

import android.graphics.Bitmap;

final class ImageDownloader$1
  implements Runnable
{
  ImageDownloader$1(ImageRequest paramImageRequest, Exception paramException, boolean paramBoolean, Bitmap paramBitmap, ImageRequest.Callback paramCallback)
  {
  }

  public final void run()
  {
    ImageResponse localImageResponse = new ImageResponse(this.val$request, this.val$error, this.val$isCachedRedirect, this.val$bitmap);
    this.val$callback.onCompleted(localImageResponse);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.ImageDownloader.1
 * JD-Core Version:    0.6.2
 */