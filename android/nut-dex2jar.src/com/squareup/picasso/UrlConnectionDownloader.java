package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class UrlConnectionDownloader
  implements Downloader
{
  private static final ThreadLocal<StringBuilder> CACHE_HEADER_BUILDER = new UrlConnectionDownloader.1();
  private static final String FORCE_CACHE = "only-if-cached,max-age=2147483647";
  static final String RESPONSE_SOURCE = "X-Android-Response-Source";
  static volatile Object cache;
  private static final Object lock = new Object();
  private final Context context;

  public UrlConnectionDownloader(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }

  private static void installCacheIfNeeded(Context paramContext)
  {
    if (cache == null)
      try
      {
        synchronized (lock)
        {
          if (cache == null)
            cache = UrlConnectionDownloader.ResponseCacheIcs.install(paramContext);
          return;
        }
      }
      catch (IOException paramContext)
      {
      }
  }

  public Downloader.Response load(Uri paramUri, int paramInt)
    throws IOException
  {
    if (Build.VERSION.SDK_INT >= 14)
      installCacheIfNeeded(this.context);
    HttpURLConnection localHttpURLConnection = openConnection(paramUri);
    localHttpURLConnection.setUseCaches(true);
    if (paramInt != 0)
      if (!NetworkPolicy.isOfflineOnly(paramInt))
        break label105;
    for (paramUri = "only-if-cached,max-age=2147483647"; ; paramUri = paramUri.toString())
    {
      localHttpURLConnection.setRequestProperty("Cache-Control", paramUri);
      int i = localHttpURLConnection.getResponseCode();
      if (i < 300)
        break;
      localHttpURLConnection.disconnect();
      throw new Downloader.ResponseException(i + " " + localHttpURLConnection.getResponseMessage(), paramInt, i);
      label105: paramUri = (StringBuilder)CACHE_HEADER_BUILDER.get();
      paramUri.setLength(0);
      if (!NetworkPolicy.shouldReadFromDiskCache(paramInt))
        paramUri.append("no-cache");
      if (!NetworkPolicy.shouldWriteToDiskCache(paramInt))
      {
        if (paramUri.length() > 0)
          paramUri.append(',');
        paramUri.append("no-store");
      }
    }
    long l = localHttpURLConnection.getHeaderFieldInt("Content-Length", -1);
    boolean bool = Utils.parseResponseSourceHeader(localHttpURLConnection.getHeaderField("X-Android-Response-Source"));
    return new Downloader.Response(localHttpURLConnection.getInputStream(), bool, l);
  }

  protected HttpURLConnection openConnection(Uri paramUri)
    throws IOException
  {
    paramUri = (HttpURLConnection)new URL(paramUri.toString()).openConnection();
    paramUri.setConnectTimeout(15000);
    paramUri.setReadTimeout(20000);
    return paramUri;
  }

  public void shutdown()
  {
    if ((Build.VERSION.SDK_INT >= 14) && (cache != null))
      UrlConnectionDownloader.ResponseCacheIcs.close(cache);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.UrlConnectionDownloader
 * JD-Core Version:    0.6.2
 */