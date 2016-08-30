package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.text.TextUtils;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.e;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.r;
import io.fabric.sdk.android.services.b.l;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.c.o;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.SSLSocketFactory;
import retrofit.RequestInterceptor;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.RetrofitError;
import retrofit.android.MainThreadExecutor;
import retrofit.client.Response;

final class ScribeFilesSender
  implements o
{
  private static final byte[] a = { 91 };
  private static final byte[] b = { 44 };
  private static final byte[] c = { 93 };
  private final Context d;
  private final f e;
  private final long f;
  private final TwitterAuthConfig g;
  private final List<r<? extends q>> h;
  private final SSLSocketFactory i;
  private final AtomicReference<RestAdapter> j;
  private final ExecutorService k;
  private final x l;

  public ScribeFilesSender(Context paramContext, f paramf, long paramLong, TwitterAuthConfig paramTwitterAuthConfig, List<r<? extends q>> paramList, SSLSocketFactory paramSSLSocketFactory, ExecutorService paramExecutorService, x paramx)
  {
    this.d = paramContext;
    this.e = paramf;
    this.f = paramLong;
    this.g = paramTwitterAuthConfig;
    this.h = paramList;
    this.i = paramSSLSocketFactory;
    this.k = paramExecutorService;
    this.l = paramx;
    this.j = new AtomicReference();
  }

  // ERROR //
  private java.lang.String b(List<File> paramList)
    throws IOException
  {
    // Byte code:
    //   0: new 72	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: sipush 1024
    //   7: invokespecial 75	java/io/ByteArrayOutputStream:<init>	(I)V
    //   10: astore_3
    //   11: iconst_1
    //   12: newarray boolean
    //   14: astore 4
    //   16: aload_3
    //   17: getstatic 34	com/twitter/sdk/android/core/internal/scribe/ScribeFilesSender:a	[B
    //   20: invokevirtual 79	java/io/ByteArrayOutputStream:write	([B)V
    //   23: aload_1
    //   24: invokeinterface 85 1 0
    //   29: astore_1
    //   30: aload_1
    //   31: invokeinterface 91 1 0
    //   36: ifeq +53 -> 89
    //   39: aload_1
    //   40: invokeinterface 95 1 0
    //   45: checkcast 97	java/io/File
    //   48: astore_2
    //   49: new 99	io/fabric/sdk/android/services/b/ab
    //   52: dup
    //   53: aload_2
    //   54: invokespecial 102	io/fabric/sdk/android/services/b/ab:<init>	(Ljava/io/File;)V
    //   57: astore_2
    //   58: aload_2
    //   59: new 104	com/twitter/sdk/android/core/internal/scribe/j
    //   62: dup
    //   63: aload_0
    //   64: aload 4
    //   66: aload_3
    //   67: invokespecial 107	com/twitter/sdk/android/core/internal/scribe/j:<init>	(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V
    //   70: invokevirtual 110	io/fabric/sdk/android/services/b/ab:a	(Lio/fabric/sdk/android/services/b/af;)V
    //   73: aload_2
    //   74: invokestatic 115	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;)V
    //   77: goto -47 -> 30
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_2
    //   83: aload_2
    //   84: invokestatic 115	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;)V
    //   87: aload_1
    //   88: athrow
    //   89: aload_3
    //   90: getstatic 38	com/twitter/sdk/android/core/internal/scribe/ScribeFilesSender:c	[B
    //   93: invokevirtual 79	java/io/ByteArrayOutputStream:write	([B)V
    //   96: aload_3
    //   97: ldc 117
    //   99: invokevirtual 121	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
    //   102: areturn
    //   103: astore_1
    //   104: goto -21 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   49	58	80	finally
    //   58	73	103	finally
  }

  private RestAdapter b()
  {
    Object localObject1 = null;
    try
    {
      int m;
      if (this.j.get() == null)
      {
        long l1 = this.f;
        Iterator localIterator = this.h.iterator();
        while (localIterator.hasNext())
        {
          localObject3 = ((r)localIterator.next()).a(l1);
          localObject1 = localObject3;
          if (localObject3 != null)
            localObject1 = localObject3;
        }
        Object localObject3 = new k(this.e, this.l);
        if ((localObject1 == null) || (((q)localObject1).a == null))
          break label193;
        m = 1;
        if (m == 0)
          break label198;
        this.j.compareAndSet(null, new RestAdapter.Builder().setEndpoint(this.e.b).setExecutors(this.k, new MainThreadExecutor()).setRequestInterceptor((RequestInterceptor)localObject3).setClient(new e(this.g, (q)localObject1, this.i)).build());
      }
      while (true)
      {
        localObject1 = (RestAdapter)this.j.get();
        return localObject1;
        label193: m = 0;
        break;
        label198: l.a(this.d, "No valid session at this time");
      }
    }
    finally
    {
    }
  }

  public final boolean a(List<File> paramList)
  {
    if (b() != null);
    for (int m = 1; ; m = 0)
    {
      if (m != 0);
      while (true)
      {
        try
        {
          paramList = b(paramList);
          l.a(this.d, paramList);
          ScribeFilesSender.ScribeService localScribeService = (ScribeFilesSender.ScribeService)((RestAdapter)this.j.get()).create(ScribeFilesSender.ScribeService.class);
          if (!TextUtils.isEmpty(this.e.e))
          {
            paramList = localScribeService.uploadSequence(this.e.e, paramList);
            if (paramList.getStatus() == 200)
              return true;
          }
          else
          {
            paramList = localScribeService.upload(this.e.c, this.e.d, paramList);
            continue;
          }
          l.b(this.d, "Failed sending files");
          return false;
        }
        catch (RetrofitError paramList)
        {
          l.b(this.d, "Failed sending files");
          if ((paramList.getResponse() == null) || ((paramList.getResponse().getStatus() != 500) && (paramList.getResponse().getStatus() != 400)))
            continue;
          return true;
        }
        catch (IOException paramList)
        {
          l.b(this.d, "Failed sending files");
          continue;
        }
        l.a(this.d, "Cannot attempt upload at this time");
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender
 * JD-Core Version:    0.6.2
 */