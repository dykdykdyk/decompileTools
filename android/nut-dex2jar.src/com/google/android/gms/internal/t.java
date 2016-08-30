package com.google.android.gms.internal;

import com.google.android.gms.common.api.y;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;

final class t extends PhantomReference<y<?>>
{
  final int a;

  public t(y paramy, int paramInt, ReferenceQueue<y<?>> paramReferenceQueue)
  {
    super(paramInt, localReferenceQueue);
    this.a = paramReferenceQueue;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.t
 * JD-Core Version:    0.6.2
 */