package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.c.d;
import java.io.IOException;
import java.util.UUID;

final class i extends d<g>
{
  public i(Context paramContext, c<g> paramc, io.fabric.sdk.android.services.b.q paramq, io.fabric.sdk.android.services.c.q paramq1, int paramInt)
    throws IOException
  {
    super(paramContext, paramc, paramq, paramq1, paramInt);
  }

  protected final String a()
  {
    UUID localUUID = UUID.randomUUID();
    return "se_" + localUUID.toString() + "_" + this.d.a() + ".tap";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.i
 * JD-Core Version:    0.6.2
 */