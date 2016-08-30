package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import java.util.Set;

public abstract class ao<T extends IInterface> extends i<T>
  implements j
{
  private final ah a;
  private final Set<Scope> h;
  private final Account i;

  public ao(Context paramContext, Looper paramLooper, ah paramah, q paramq, r paramr)
  {
    this(paramContext, paramLooper, ar.a(paramContext), com.google.android.gms.common.b.a(), paramah, (q)b.a(paramq), (r)b.a(paramr));
  }

  private ao(Context paramContext, Looper paramLooper, ar paramar, com.google.android.gms.common.b paramb, ah paramah, q paramq, r paramr)
  {
  }

  public final Account f()
  {
    return this.i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.ao
 * JD-Core Version:    0.6.2
 */