package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

class ImageResponseCache
{
  static final String TAG = ImageResponseCache.class.getSimpleName();
  private static volatile FileLruCache imageCache;

  static void clearCache(Context paramContext)
  {
    try
    {
      getCache(paramContext).clearCache();
      return;
    }
    catch (IOException paramContext)
    {
      Logger.log(LoggingBehavior.CACHE, 5, TAG, "clearCache failed " + paramContext.getMessage());
    }
  }

  static FileLruCache getCache(Context paramContext)
    throws IOException
  {
    try
    {
      if (imageCache == null)
        imageCache = new FileLruCache(paramContext.getApplicationContext(), TAG, new FileLruCache.Limits());
      paramContext = imageCache;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  static InputStream getCachedImageStream(URI paramURI, Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramURI != null)
    {
      localObject1 = localObject2;
      if (!isCDNURL(paramURI));
    }
    try
    {
      localObject1 = getCache(paramContext).get(paramURI.toString());
      return localObject1;
    }
    catch (IOException paramURI)
    {
      Logger.log(LoggingBehavior.CACHE, 5, TAG, paramURI.toString());
    }
    return null;
  }

  static InputStream interceptAndCacheImageStream(Context paramContext, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    Object localObject = null;
    URL localURL;
    InputStream localInputStream;
    if (paramHttpURLConnection.getResponseCode() == 200)
    {
      localURL = paramHttpURLConnection.getURL();
      localInputStream = paramHttpURLConnection.getInputStream();
      localObject = localInputStream;
    }
    try
    {
      if (isCDNURL(localURL.toURI()))
        localObject = getCache(paramContext).interceptAndPut(localURL.toString(), new ImageResponseCache.BufferedHttpInputStream(localInputStream, paramHttpURLConnection));
      return localObject;
    }
    catch (URISyntaxException paramContext)
    {
      return localInputStream;
    }
    catch (IOException paramContext)
    {
    }
    return localInputStream;
  }

  private static boolean isCDNURL(URI paramURI)
  {
    if (paramURI != null)
    {
      paramURI = paramURI.getHost();
      if (paramURI.endsWith("fbcdn.net"));
      while ((paramURI.startsWith("fbcdn")) && (paramURI.endsWith("akamaihd.net")))
        return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.ImageResponseCache
 * JD-Core Version:    0.6.2
 */