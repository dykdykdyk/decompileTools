package com.google.android.gms.signin.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.ah;
import com.google.android.gms.common.internal.ao;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.av;

public final class j extends ao<f>
  implements au
{
  private final boolean a;
  private final ah h;
  private final Bundle i;
  private Integer j;

  public j(Context paramContext, Looper paramLooper, ah paramah, q paramq, r paramr)
  {
    this(paramContext, paramLooper, true, paramah, localBundle, paramq, paramr);
  }

  public j(Context paramContext, Looper paramLooper, boolean paramBoolean, ah paramah, Bundle paramBundle, q paramq, r paramr)
  {
    super(paramContext, paramLooper, paramah, paramq, paramr);
    this.a = paramBoolean;
    this.h = paramah;
    this.i = paramBundle;
    this.j = paramah.f;
  }

  protected final String d()
  {
    return "com.google.android.gms.signin.service.START";
  }

  protected final String e()
  {
    return "com.google.android.gms.signin.internal.ISignInService";
  }

  protected final Bundle g()
  {
    String str = this.h.c;
    if (!this.d.getPackageName().equals(str))
      this.i.putString("com.google.android.gms.signin.internal.realClientPackageName", this.h.c);
    return this.i;
  }

  public final boolean i()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.j
 * JD-Core Version:    0.6.2
 */