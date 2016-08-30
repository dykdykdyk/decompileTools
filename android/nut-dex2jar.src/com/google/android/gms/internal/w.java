package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.o;
import java.util.Collections;
import java.util.Map;

final class w
  implements o
{
  private final j b;
  private final i<?> c;

  public w(j paramj, i<?> parami)
  {
    this.b = parami;
    Object localObject;
    this.c = localObject;
  }

  public final void a(ConnectionResult paramConnectionResult)
  {
    if (paramConnectionResult.b())
    {
      this.b.a(Collections.emptySet());
      return;
    }
    ((v)s.d(this.a).get(this.c)).a(paramConnectionResult);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.w
 * JD-Core Version:    0.6.2
 */