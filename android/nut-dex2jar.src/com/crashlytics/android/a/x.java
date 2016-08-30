package com.crashlytics.android.a;

import android.content.Context;
import io.fabric.sdk.android.services.b.q;
import io.fabric.sdk.android.services.c.d;
import io.fabric.sdk.android.services.c.k;
import io.fabric.sdk.android.services.e.b;
import java.io.IOException;
import java.util.UUID;

final class x extends d<ab>
{
  b a;

  x(Context paramContext, af paramaf, q paramq, k paramk)
    throws IOException
  {
    super(paramContext, paramaf, paramq, paramk, 100);
  }

  protected final String a()
  {
    UUID localUUID = UUID.randomUUID();
    return "sa_" + localUUID.toString() + "_" + this.d.a() + ".tap";
  }

  protected final int b()
  {
    if (this.a == null)
      return super.b();
    return this.a.e;
  }

  protected final int c()
  {
    if (this.a == null)
      return super.c();
    return this.a.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.x
 * JD-Core Version:    0.6.2
 */