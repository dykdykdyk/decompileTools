package com.squareup.picasso;

import android.content.Context;
import android.net.http.HttpResponseCache;
import java.io.File;
import java.io.IOException;

class UrlConnectionDownloader$ResponseCacheIcs
{
  static void close(Object paramObject)
  {
    try
    {
      ((HttpResponseCache)paramObject).close();
      return;
    }
    catch (IOException paramObject)
    {
    }
  }

  static Object install(Context paramContext)
    throws IOException
  {
    File localFile = Utils.createDefaultCacheDir(paramContext);
    HttpResponseCache localHttpResponseCache = HttpResponseCache.getInstalled();
    paramContext = localHttpResponseCache;
    if (localHttpResponseCache == null)
      paramContext = HttpResponseCache.install(localFile, Utils.calculateDiskCacheSize(localFile));
    return paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.UrlConnectionDownloader.ResponseCacheIcs
 * JD-Core Version:    0.6.2
 */