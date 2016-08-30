package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import com.facebook.FacebookException;
import java.lang.reflect.Method;

public class AttributionIdentifiers
{
  private static final String ANDROID_ID_COLUMN_NAME = "androidid";
  private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
  private static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
  private static final int CONNECTION_RESULT_SUCCESS = 0;
  private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000L;
  private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
  private static final String TAG = AttributionIdentifiers.class.getCanonicalName();
  private static AttributionIdentifiers recentlyFetchedIdentifiers;
  private String androidAdvertiserId;
  private String attributionId;
  private long fetchTime;
  private boolean limitTracking;

  private static AttributionIdentifiers getAndroidId(Context paramContext)
  {
    AttributionIdentifiers localAttributionIdentifiers = new AttributionIdentifiers();
    while (true)
    {
      try
      {
        if (Looper.myLooper() == Looper.getMainLooper())
          throw new FacebookException("getAndroidId cannot be called on the main thread.");
      }
      catch (Exception paramContext)
      {
        Utility.logd("android_id", paramContext);
        return localAttributionIdentifiers;
      }
      Object localObject = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
      if (localObject == null)
        return localAttributionIdentifiers;
      localObject = Utility.invokeMethodQuietly(null, (Method)localObject, new Object[] { paramContext });
      if ((!(localObject instanceof Integer)) || (((Integer)localObject).intValue() != 0))
        break;
      localObject = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
      if (localObject == null)
        return localAttributionIdentifiers;
      paramContext = Utility.invokeMethodQuietly(null, (Method)localObject, new Object[] { paramContext });
      if (paramContext == null)
        return localAttributionIdentifiers;
      localObject = Utility.getMethodQuietly(paramContext.getClass(), "getId", new Class[0]);
      Method localMethod = Utility.getMethodQuietly(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
      if ((localObject == null) || (localMethod == null))
        break label215;
      localAttributionIdentifiers.androidAdvertiserId = ((String)Utility.invokeMethodQuietly(paramContext, (Method)localObject, new Object[0]));
      localAttributionIdentifiers.limitTracking = ((Boolean)Utility.invokeMethodQuietly(paramContext, localMethod, new Object[0])).booleanValue();
    }
    return localAttributionIdentifiers;
    label215: return localAttributionIdentifiers;
  }

  // ERROR //
  public static AttributionIdentifiers getAttributionIdentifiers(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   3: ifnull +24 -> 27
    //   6: invokestatic 140	java/lang/System:currentTimeMillis	()J
    //   9: getstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   12: getfield 142	com/facebook/internal/AttributionIdentifiers:fetchTime	J
    //   15: lsub
    //   16: ldc2_w 19
    //   19: lcmp
    //   20: ifge +7 -> 27
    //   23: getstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   26: areturn
    //   27: aload_0
    //   28: invokestatic 144	com/facebook/internal/AttributionIdentifiers:getAndroidId	(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    //   31: astore 6
    //   33: aload_0
    //   34: invokevirtual 148	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   37: getstatic 51	com/facebook/internal/AttributionIdentifiers:ATTRIBUTION_ID_CONTENT_URI	Landroid/net/Uri;
    //   40: iconst_3
    //   41: anewarray 121	java/lang/String
    //   44: dup
    //   45: iconst_0
    //   46: ldc 11
    //   48: aastore
    //   49: dup
    //   50: iconst_1
    //   51: ldc 8
    //   53: aastore
    //   54: dup
    //   55: iconst_2
    //   56: ldc 23
    //   58: aastore
    //   59: aconst_null
    //   60: aconst_null
    //   61: aconst_null
    //   62: invokevirtual 154	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   65: astore 5
    //   67: aload 5
    //   69: ifnull +20 -> 89
    //   72: aload 5
    //   74: astore_0
    //   75: aload 5
    //   77: invokeinterface 159 1 0
    //   82: istore 4
    //   84: iload 4
    //   86: ifne +18 -> 104
    //   89: aload 5
    //   91: ifnull +10 -> 101
    //   94: aload 5
    //   96: invokeinterface 162 1 0
    //   101: aload 6
    //   103: areturn
    //   104: aload 5
    //   106: astore_0
    //   107: aload 5
    //   109: ldc 11
    //   111: invokeinterface 166 2 0
    //   116: istore_1
    //   117: aload 5
    //   119: astore_0
    //   120: aload 5
    //   122: ldc 8
    //   124: invokeinterface 166 2 0
    //   129: istore_2
    //   130: aload 5
    //   132: astore_0
    //   133: aload 5
    //   135: ldc 23
    //   137: invokeinterface 166 2 0
    //   142: istore_3
    //   143: aload 5
    //   145: astore_0
    //   146: aload 6
    //   148: aload 5
    //   150: iload_1
    //   151: invokeinterface 170 2 0
    //   156: putfield 172	com/facebook/internal/AttributionIdentifiers:attributionId	Ljava/lang/String;
    //   159: iload_2
    //   160: ifle +53 -> 213
    //   163: iload_3
    //   164: ifle +49 -> 213
    //   167: aload 5
    //   169: astore_0
    //   170: aload 6
    //   172: invokevirtual 175	com/facebook/internal/AttributionIdentifiers:getAndroidAdvertiserId	()Ljava/lang/String;
    //   175: ifnonnull +38 -> 213
    //   178: aload 5
    //   180: astore_0
    //   181: aload 6
    //   183: aload 5
    //   185: iload_2
    //   186: invokeinterface 170 2 0
    //   191: putfield 123	com/facebook/internal/AttributionIdentifiers:androidAdvertiserId	Ljava/lang/String;
    //   194: aload 5
    //   196: astore_0
    //   197: aload 6
    //   199: aload 5
    //   201: iload_3
    //   202: invokeinterface 170 2 0
    //   207: invokestatic 179	java/lang/Boolean:parseBoolean	(Ljava/lang/String;)Z
    //   210: putfield 131	com/facebook/internal/AttributionIdentifiers:limitTracking	Z
    //   213: aload 5
    //   215: ifnull +10 -> 225
    //   218: aload 5
    //   220: invokeinterface 162 1 0
    //   225: aload 6
    //   227: invokestatic 140	java/lang/System:currentTimeMillis	()J
    //   230: putfield 142	com/facebook/internal/AttributionIdentifiers:fetchTime	J
    //   233: aload 6
    //   235: putstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   238: aload 6
    //   240: areturn
    //   241: astore 6
    //   243: aconst_null
    //   244: astore 5
    //   246: aload 5
    //   248: astore_0
    //   249: getstatic 41	com/facebook/internal/AttributionIdentifiers:TAG	Ljava/lang/String;
    //   252: new 181	java/lang/StringBuilder
    //   255: dup
    //   256: ldc 183
    //   258: invokespecial 184	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   261: aload 6
    //   263: invokevirtual 187	java/lang/Exception:toString	()Ljava/lang/String;
    //   266: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: invokestatic 198	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   275: pop
    //   276: aload 5
    //   278: ifnull +10 -> 288
    //   281: aload 5
    //   283: invokeinterface 162 1 0
    //   288: aconst_null
    //   289: areturn
    //   290: astore 5
    //   292: aconst_null
    //   293: astore_0
    //   294: aload_0
    //   295: ifnull +9 -> 304
    //   298: aload_0
    //   299: invokeinterface 162 1 0
    //   304: aload 5
    //   306: athrow
    //   307: astore 5
    //   309: goto -15 -> 294
    //   312: astore 6
    //   314: goto -68 -> 246
    //
    // Exception table:
    //   from	to	target	type
    //   33	67	241	java/lang/Exception
    //   33	67	290	finally
    //   75	84	307	finally
    //   107	117	307	finally
    //   120	130	307	finally
    //   133	143	307	finally
    //   146	159	307	finally
    //   170	178	307	finally
    //   181	194	307	finally
    //   197	213	307	finally
    //   249	276	307	finally
    //   75	84	312	java/lang/Exception
    //   107	117	312	java/lang/Exception
    //   120	130	312	java/lang/Exception
    //   133	143	312	java/lang/Exception
    //   146	159	312	java/lang/Exception
    //   170	178	312	java/lang/Exception
    //   181	194	312	java/lang/Exception
    //   197	213	312	java/lang/Exception
  }

  public String getAndroidAdvertiserId()
  {
    return this.androidAdvertiserId;
  }

  public String getAttributionId()
  {
    return this.attributionId;
  }

  public boolean isTrackingLimited()
  {
    return this.limitTracking;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.AttributionIdentifiers
 * JD-Core Version:    0.6.2
 */