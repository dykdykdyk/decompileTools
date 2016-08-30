package com.squareup.picasso;

import android.net.Uri;
import java.io.IOException;

public abstract interface Downloader
{
  public abstract Downloader.Response load(Uri paramUri, int paramInt)
    throws IOException;

  public abstract void shutdown();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Downloader
 * JD-Core Version:    0.6.2
 */