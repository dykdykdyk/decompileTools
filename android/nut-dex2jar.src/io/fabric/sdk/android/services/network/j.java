package io.fabric.sdk.android.services.network;

import java.io.IOException;
import java.util.concurrent.Callable;

public abstract class j<V>
  implements Callable<V>
{
  protected abstract V a()
    throws HttpRequest.HttpRequestException, IOException;

  protected abstract void b()
    throws IOException;

  // ERROR //
  public V call()
    throws HttpRequest.HttpRequestException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual 22	io/fabric/sdk/android/services/network/j:a	()Ljava/lang/Object;
    //   6: astore_2
    //   7: aload_0
    //   8: invokevirtual 24	io/fabric/sdk/android/services/network/j:b	()V
    //   11: aload_2
    //   12: areturn
    //   13: astore_2
    //   14: new 16	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   17: dup
    //   18: aload_2
    //   19: invokespecial 27	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   22: athrow
    //   23: astore_2
    //   24: aload_2
    //   25: athrow
    //   26: astore_2
    //   27: aload_0
    //   28: invokevirtual 24	io/fabric/sdk/android/services/network/j:b	()V
    //   31: aload_2
    //   32: athrow
    //   33: astore_2
    //   34: new 16	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 27	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   42: athrow
    //   43: astore_3
    //   44: iload_1
    //   45: ifne -14 -> 31
    //   48: new 16	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   51: dup
    //   52: aload_3
    //   53: invokespecial 27	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   56: athrow
    //   57: astore_2
    //   58: iconst_0
    //   59: istore_1
    //   60: goto -33 -> 27
    //
    // Exception table:
    //   from	to	target	type
    //   7	11	13	java/io/IOException
    //   2	7	23	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   24	26	26	finally
    //   34	43	26	finally
    //   2	7	33	java/io/IOException
    //   27	31	43	java/io/IOException
    //   2	7	57	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.j
 * JD-Core Version:    0.6.2
 */