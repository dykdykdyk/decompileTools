package com.facebook.internal;

import android.content.Context;

class ImageDownloader$DownloadImageWorkItem
  implements Runnable
{
  private Context context;
  private ImageDownloader.RequestKey key;

  ImageDownloader$DownloadImageWorkItem(Context paramContext, ImageDownloader.RequestKey paramRequestKey)
  {
    this.context = paramContext;
    this.key = paramRequestKey;
  }

  public void run()
  {
    ImageDownloader.access$200(this.key, this.context);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.ImageDownloader.DownloadImageWorkItem
 * JD-Core Version:    0.6.2
 */