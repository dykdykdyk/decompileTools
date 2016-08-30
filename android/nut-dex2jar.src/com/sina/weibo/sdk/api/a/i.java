package com.sina.weibo.sdk.api.a;

import android.os.Bundle;
import com.sina.weibo.sdk.api.h;
import com.sina.weibo.sdk.c;

public final class i extends b
{
  public h b;

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle.putAll(this.b.a(paramBundle));
  }

  final boolean a(c paramc)
  {
    if ((this.b == null) || (paramc == null) || (!paramc.a()));
    while (!j.a(paramc, this.b))
      return false;
    return this.b.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.a.i
 * JD-Core Version:    0.6.2
 */