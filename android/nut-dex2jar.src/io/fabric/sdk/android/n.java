package io.fabric.sdk.android;

import io.fabric.sdk.android.services.b.ai;
import io.fabric.sdk.android.services.concurrency.p;

public final class n<Result> extends p<Void, Void, Result>
{
  final o<Result> a;

  public n(o<Result> paramo)
  {
    this.a = paramo;
  }

  private ai a(String paramString)
  {
    paramString = new ai(this.a.b() + "." + paramString, "KitInitialization");
    paramString.a();
    return paramString;
  }

  public final int a()
  {
    return io.fabric.sdk.android.services.concurrency.o.c;
  }

  // ERROR //
  protected final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 59	io/fabric/sdk/android/services/concurrency/p:b	()V
    //   4: aload_0
    //   5: ldc 61
    //   7: invokespecial 63	io/fabric/sdk/android/n:a	(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/ai;
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 15	io/fabric/sdk/android/n:a	Lio/fabric/sdk/android/o;
    //   15: invokevirtual 67	io/fabric/sdk/android/o:c_	()Z
    //   18: istore_1
    //   19: aload_2
    //   20: invokevirtual 68	io/fabric/sdk/android/services/b/ai:b	()V
    //   23: iload_1
    //   24: ifne +8 -> 32
    //   27: aload_0
    //   28: invokevirtual 71	io/fabric/sdk/android/n:h_	()Z
    //   31: pop
    //   32: return
    //   33: astore_3
    //   34: aload_3
    //   35: athrow
    //   36: astore_3
    //   37: aload_2
    //   38: invokevirtual 68	io/fabric/sdk/android/services/b/ai:b	()V
    //   41: aload_0
    //   42: invokevirtual 71	io/fabric/sdk/android/n:h_	()Z
    //   45: pop
    //   46: aload_3
    //   47: athrow
    //   48: astore_3
    //   49: invokestatic 76	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   52: ldc 78
    //   54: ldc 80
    //   56: aload_3
    //   57: invokeinterface 85 4 0
    //   62: aload_2
    //   63: invokevirtual 68	io/fabric/sdk/android/services/b/ai:b	()V
    //   66: aload_0
    //   67: invokevirtual 71	io/fabric/sdk/android/n:h_	()Z
    //   70: pop
    //   71: return
    //
    // Exception table:
    //   from	to	target	type
    //   11	19	33	io/fabric/sdk/android/services/concurrency/UnmetDependencyException
    //   11	19	36	finally
    //   34	36	36	finally
    //   49	62	36	finally
    //   11	19	48	java/lang/Exception
  }

  protected final void c()
  {
    this.a.r.a();
  }

  protected final void d()
  {
    InitializationException localInitializationException = new InitializationException(this.a.b() + " Initialization was cancelled");
    this.a.r.a(localInitializationException);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.n
 * JD-Core Version:    0.6.2
 */