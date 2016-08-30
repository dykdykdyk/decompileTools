package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.x;

public final class j extends n<x>
{
  private int d;
  private boolean e;

  // ERROR //
  private x b(com.google.android.gms.common.api.Status paramStatus)
  {
    // Byte code:
    //   0: aconst_null
    //   1: monitorenter
    //   2: new 13	com/google/android/gms/common/ConnectionResult
    //   5: dup
    //   6: bipush 8
    //   8: invokespecial 17	com/google/android/gms/common/ConnectionResult:<init>	(I)V
    //   11: pop
    //   12: new 19	java/lang/NullPointerException
    //   15: dup
    //   16: invokespecial 22	java/lang/NullPointerException:<init>	()V
    //   19: athrow
    //   20: astore_1
    //   21: aconst_null
    //   22: monitorexit
    //   23: aload_1
    //   24: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	12	20	finally
    //   12	20	20	finally
    //   21	23	20	finally
  }

  public final void a(i<?> parami, ConnectionResult paramConnectionResult)
  {
    try
    {
      throw new NullPointerException();
    }
    finally
    {
    }
    throw parami;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.j
 * JD-Core Version:    0.6.2
 */