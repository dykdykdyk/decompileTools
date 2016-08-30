package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.e;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class AdvertisingIdClient
{
  private final Context mContext;
  e zzpE;
  c zzpF;
  boolean zzpG;
  Object zzpH = new Object();
  a zzpI;
  final long zzpJ;

  public AdvertisingIdClient(Context paramContext)
  {
    this(paramContext, 30000L);
  }

  public AdvertisingIdClient(Context paramContext, long paramLong)
  {
    b.a(paramContext);
    this.mContext = paramContext;
    this.zzpG = false;
    this.zzpJ = paramLong;
  }

  public static AdvertisingIdClient.Info getAdvertisingIdInfo(Context paramContext)
    throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
  {
    paramContext = new AdvertisingIdClient(paramContext, -1L);
    try
    {
      paramContext.zzd(false);
      AdvertisingIdClient.Info localInfo = paramContext.getInfo();
      return localInfo;
    }
    finally
    {
      paramContext.finish();
    }
  }

  public static void setShouldSkipGmsCoreVersionCheck(boolean paramBoolean)
  {
  }

  static c zza(Context paramContext, e parame)
    throws IOException
  {
    try
    {
      paramContext = TimeUnit.MILLISECONDS;
      b.b("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
      if (parame.a)
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }
    catch (InterruptedException paramContext)
    {
      throw new IOException("Interrupted exception");
      parame.a = true;
      paramContext = (IBinder)parame.b.poll(10000L, paramContext);
      if (paramContext == null)
        throw new TimeoutException("Timed out waiting for the service connection");
    }
    catch (Throwable paramContext)
    {
      throw new IOException(paramContext);
    }
    paramContext = d.a(paramContext);
    return paramContext;
  }

  private void zzbd()
  {
    synchronized (this.zzpH)
    {
      if (this.zzpI != null)
        this.zzpI.a.countDown();
    }
    try
    {
      this.zzpI.join();
      label31: if (this.zzpJ > 0L)
        this.zzpI = new a(this, this.zzpJ);
      return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label31;
    }
  }

  static e zzh(Context paramContext)
    throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      switch (g.b().a(paramContext))
      {
      case 1:
      default:
        throw new IOException("Google Play services not available");
      case 0:
      case 2:
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new GooglePlayServicesNotAvailableException(9);
    }
    e locale = new e();
    Intent localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
    localIntent.setPackage("com.google.android.gms");
    try
    {
      com.google.android.gms.common.a.a.a();
      paramContext.getClass().getName();
      boolean bool = com.google.android.gms.common.a.a.a(paramContext, localIntent, locale, 1);
      if (bool)
        return locale;
    }
    catch (Throwable paramContext)
    {
      throw new IOException(paramContext);
    }
    throw new IOException("Connection failure");
  }

  protected void finalize()
    throws Throwable
  {
    finish();
    super.finalize();
  }

  // ERROR //
  public void finish()
  {
    // Byte code:
    //   0: ldc 212
    //   2: invokestatic 86	com/google/android/gms/common/internal/b:b	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 39	com/google/android/gms/ads/identifier/AdvertisingIdClient:mContext	Landroid/content/Context;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 214	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpE	Lcom/google/android/gms/common/e;
    //   18: ifnonnull +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpG	Z
    //   28: ifeq +18 -> 46
    //   31: invokestatic 190	com/google/android/gms/common/a/a:a	()Lcom/google/android/gms/common/a/a;
    //   34: pop
    //   35: aload_0
    //   36: getfield 39	com/google/android/gms/ads/identifier/AdvertisingIdClient:mContext	Landroid/content/Context;
    //   39: aload_0
    //   40: getfield 214	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpE	Lcom/google/android/gms/common/e;
    //   43: invokestatic 217	com/google/android/gms/common/a/a:a	(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    //   46: aload_0
    //   47: iconst_0
    //   48: putfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpG	Z
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 219	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpF	Lcom/google/android/gms/internal/c;
    //   56: aload_0
    //   57: aconst_null
    //   58: putfield 214	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpE	Lcom/google/android/gms/common/e;
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    //   69: astore_1
    //   70: ldc 221
    //   72: ldc 223
    //   74: aload_1
    //   75: invokestatic 229	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   78: pop
    //   79: goto -33 -> 46
    //
    // Exception table:
    //   from	to	target	type
    //   7	21	64	finally
    //   21	23	64	finally
    //   24	46	64	finally
    //   46	63	64	finally
    //   65	67	64	finally
    //   70	79	64	finally
    //   24	46	69	java/lang/IllegalArgumentException
  }

  // ERROR //
  public AdvertisingIdClient.Info getInfo()
    throws IOException
  {
    // Byte code:
    //   0: ldc 212
    //   2: invokestatic 86	com/google/android/gms/common/internal/b:b	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpG	Z
    //   11: ifne +83 -> 94
    //   14: aload_0
    //   15: getfield 31	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpH	Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield 126	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpI	Lcom/google/android/gms/ads/identifier/a;
    //   25: ifnull +13 -> 38
    //   28: aload_0
    //   29: getfield 126	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpI	Lcom/google/android/gms/ads/identifier/a;
    //   32: getfield 235	com/google/android/gms/ads/identifier/a:b	Z
    //   35: ifne +23 -> 58
    //   38: new 47	java/io/IOException
    //   41: dup
    //   42: ldc 237
    //   44: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: astore_2
    //   49: aload_1
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_1
    //   59: monitorexit
    //   60: aload_0
    //   61: iconst_0
    //   62: invokevirtual 59	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzd	(Z)V
    //   65: aload_0
    //   66: getfield 41	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpG	Z
    //   69: ifne +25 -> 94
    //   72: new 47	java/io/IOException
    //   75: dup
    //   76: ldc 239
    //   78: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   81: athrow
    //   82: astore_1
    //   83: new 47	java/io/IOException
    //   86: dup
    //   87: ldc 239
    //   89: aload_1
    //   90: invokespecial 242	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   93: athrow
    //   94: aload_0
    //   95: getfield 214	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpE	Lcom/google/android/gms/common/e;
    //   98: invokestatic 37	com/google/android/gms/common/internal/b:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: aload_0
    //   103: getfield 219	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpF	Lcom/google/android/gms/internal/c;
    //   106: invokestatic 37	com/google/android/gms/common/internal/b:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   109: pop
    //   110: new 244	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info
    //   113: dup
    //   114: aload_0
    //   115: getfield 219	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpF	Lcom/google/android/gms/internal/c;
    //   118: invokeinterface 248 1 0
    //   123: aload_0
    //   124: getfield 219	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzpF	Lcom/google/android/gms/internal/c;
    //   127: iconst_1
    //   128: invokeinterface 251 2 0
    //   133: invokespecial 254	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info:<init>	(Ljava/lang/String;Z)V
    //   136: astore_1
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_0
    //   140: invokespecial 256	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzbd	()V
    //   143: aload_1
    //   144: areturn
    //   145: astore_1
    //   146: ldc 221
    //   148: ldc_w 258
    //   151: aload_1
    //   152: invokestatic 229	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   155: pop
    //   156: new 47	java/io/IOException
    //   159: dup
    //   160: ldc_w 260
    //   163: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   166: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   21	38	48	finally
    //   38	48	48	finally
    //   49	51	48	finally
    //   58	60	48	finally
    //   7	21	53	finally
    //   51	53	53	finally
    //   54	56	53	finally
    //   60	65	53	finally
    //   65	82	53	finally
    //   83	94	53	finally
    //   94	110	53	finally
    //   110	137	53	finally
    //   137	139	53	finally
    //   146	167	53	finally
    //   60	65	82	java/lang/Exception
    //   110	137	145	android/os/RemoteException
  }

  public void start()
    throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
  {
    zzd(true);
  }

  protected void zzd(boolean paramBoolean)
    throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
  {
    b.b("Calling this from your main thread can lead to deadlock");
    try
    {
      if (this.zzpG)
        finish();
      this.zzpE = zzh(this.mContext);
      this.zzpF = zza(this.mContext, this.zzpE);
      this.zzpG = true;
      if (paramBoolean)
        zzbd();
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient
 * JD-Core Version:    0.6.2
 */