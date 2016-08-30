package com.squareup.picasso;

import java.io.IOException;

public class Downloader$ResponseException extends IOException
{
  final boolean localCacheOnly;
  final int responseCode;

  public Downloader$ResponseException(String paramString, int paramInt1, int paramInt2)
  {
    super(paramString);
    this.localCacheOnly = NetworkPolicy.isOfflineOnly(paramInt1);
    this.responseCode = paramInt2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Downloader.ResponseException
 * JD-Core Version:    0.6.2
 */