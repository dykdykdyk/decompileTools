package com.google.android.gms.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.internal.b;
import java.util.concurrent.atomic.AtomicReference;

public abstract class l<R extends u, A extends g> extends n<R>
{
  private AtomicReference<ab> d;

  public static void a()
    throws DeadObjectException
  {
  }

  public final void a(ab paramab)
  {
    this.d.set(paramab);
  }

  public final void b(Status paramStatus)
  {
    boolean bool = true;
    int i;
    if (paramStatus.h <= 0)
    {
      i = 1;
      if (i != 0)
        break label36;
    }
    while (true)
    {
      b.b(bool, "Failed result must not be success");
      a(a(paramStatus));
      return;
      i = 0;
      break;
      label36: bool = false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.l
 * JD-Core Version:    0.6.2
 */