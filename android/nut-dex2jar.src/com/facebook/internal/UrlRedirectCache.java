package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import java.io.IOException;

class UrlRedirectCache
{
  private static final String REDIRECT_CONTENT_TAG = TAG + "_Redirect";
  static final String TAG = UrlRedirectCache.class.getSimpleName();
  private static volatile FileLruCache urlRedirectCache;

  // ERROR //
  static void cacheUriRedirect(Context paramContext, java.net.URI paramURI1, java.net.URI paramURI2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +7 -> 8
    //   4: aload_2
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: aconst_null
    //   10: astore_3
    //   11: aload_0
    //   12: invokestatic 45	com/facebook/internal/UrlRedirectCache:getCache	(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    //   15: aload_1
    //   16: invokevirtual 48	java/net/URI:toString	()Ljava/lang/String;
    //   19: getstatic 35	com/facebook/internal/UrlRedirectCache:REDIRECT_CONTENT_TAG	Ljava/lang/String;
    //   22: invokevirtual 54	com/facebook/internal/FileLruCache:openPutStream	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    //   25: astore_0
    //   26: aload_0
    //   27: astore_3
    //   28: aload_0
    //   29: aload_2
    //   30: invokevirtual 48	java/net/URI:toString	()Ljava/lang/String;
    //   33: invokevirtual 60	java/lang/String:getBytes	()[B
    //   36: invokevirtual 66	java/io/OutputStream:write	([B)V
    //   39: aload_0
    //   40: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   43: return
    //   44: astore_0
    //   45: aload_3
    //   46: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   49: return
    //   50: astore_0
    //   51: aconst_null
    //   52: astore_2
    //   53: aload_0
    //   54: astore_1
    //   55: aload_2
    //   56: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   59: aload_1
    //   60: athrow
    //   61: astore_1
    //   62: aload_0
    //   63: astore_2
    //   64: goto -9 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   11	26	44	java/io/IOException
    //   28	39	44	java/io/IOException
    //   11	26	50	finally
    //   28	39	61	finally
  }

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
      if (urlRedirectCache == null)
        urlRedirectCache = new FileLruCache(paramContext.getApplicationContext(), TAG, new FileLruCache.Limits());
      paramContext = urlRedirectCache;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  // ERROR //
  static java.net.URI getRedirectedUri(Context paramContext, java.net.URI paramURI)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: ifnonnull +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: aload_1
    //   9: invokevirtual 48	java/net/URI:toString	()Ljava/lang/String;
    //   12: astore_1
    //   13: aload_0
    //   14: invokestatic 45	com/facebook/internal/UrlRedirectCache:getCache	(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    //   17: astore 4
    //   19: aconst_null
    //   20: astore_0
    //   21: aload 4
    //   23: aload_1
    //   24: getstatic 35	com/facebook/internal/UrlRedirectCache:REDIRECT_CONTENT_TAG	Ljava/lang/String;
    //   27: invokevirtual 119	com/facebook/internal/FileLruCache:get	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    //   30: astore_3
    //   31: aload_3
    //   32: ifnull +76 -> 108
    //   35: new 121	java/io/InputStreamReader
    //   38: dup
    //   39: aload_3
    //   40: invokespecial 124	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   43: astore_1
    //   44: sipush 128
    //   47: newarray char
    //   49: astore_0
    //   50: new 21	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 24	java/lang/StringBuilder:<init>	()V
    //   57: astore_3
    //   58: aload_1
    //   59: aload_0
    //   60: iconst_0
    //   61: sipush 128
    //   64: invokevirtual 128	java/io/InputStreamReader:read	([CII)I
    //   67: istore_2
    //   68: iload_2
    //   69: ifle +21 -> 90
    //   72: aload_3
    //   73: aload_0
    //   74: iconst_0
    //   75: iload_2
    //   76: invokevirtual 131	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: goto -22 -> 58
    //   83: astore_0
    //   84: aload_1
    //   85: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   88: aconst_null
    //   89: areturn
    //   90: aload_1
    //   91: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   94: aload_3
    //   95: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: astore_3
    //   99: aload_1
    //   100: astore_0
    //   101: iconst_1
    //   102: istore_2
    //   103: aload_3
    //   104: astore_1
    //   105: goto -84 -> 21
    //   108: iload_2
    //   109: ifeq +18 -> 127
    //   112: new 47	java/net/URI
    //   115: dup
    //   116: aload_1
    //   117: invokespecial 132	java/net/URI:<init>	(Ljava/lang/String;)V
    //   120: astore_1
    //   121: aload_0
    //   122: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   125: aload_1
    //   126: areturn
    //   127: aload_0
    //   128: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   131: aconst_null
    //   132: areturn
    //   133: astore_0
    //   134: aconst_null
    //   135: astore_1
    //   136: aload_1
    //   137: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   140: aconst_null
    //   141: areturn
    //   142: astore_0
    //   143: aconst_null
    //   144: astore_1
    //   145: aload_1
    //   146: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   149: aload_0
    //   150: athrow
    //   151: astore_0
    //   152: goto -7 -> 145
    //   155: astore_3
    //   156: aload_0
    //   157: astore_1
    //   158: aload_3
    //   159: astore_0
    //   160: goto -15 -> 145
    //   163: astore_0
    //   164: goto -28 -> 136
    //   167: astore_1
    //   168: aload_0
    //   169: astore_1
    //   170: goto -34 -> 136
    //   173: astore_0
    //   174: aconst_null
    //   175: astore_1
    //   176: goto -92 -> 84
    //   179: astore_1
    //   180: aload_0
    //   181: astore_1
    //   182: goto -98 -> 84
    //
    // Exception table:
    //   from	to	target	type
    //   44	58	83	java/net/URISyntaxException
    //   58	68	83	java/net/URISyntaxException
    //   72	80	83	java/net/URISyntaxException
    //   90	99	83	java/net/URISyntaxException
    //   13	19	133	java/io/IOException
    //   13	19	142	finally
    //   44	58	151	finally
    //   58	68	151	finally
    //   72	80	151	finally
    //   90	99	151	finally
    //   21	31	155	finally
    //   35	44	155	finally
    //   112	121	155	finally
    //   44	58	163	java/io/IOException
    //   58	68	163	java/io/IOException
    //   72	80	163	java/io/IOException
    //   90	99	163	java/io/IOException
    //   21	31	167	java/io/IOException
    //   35	44	167	java/io/IOException
    //   112	121	167	java/io/IOException
    //   13	19	173	java/net/URISyntaxException
    //   21	31	179	java/net/URISyntaxException
    //   35	44	179	java/net/URISyntaxException
    //   112	121	179	java/net/URISyntaxException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.UrlRedirectCache
 * JD-Core Version:    0.6.2
 */