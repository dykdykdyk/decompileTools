package io.fabric.sdk.android.services.b;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class d extends k
{
  d(c paramc, b paramb)
  {
  }

  public final void a()
  {
    b localb = this.b.a();
    if (!this.a.equals(localb))
    {
      f.b().a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
      this.b.a(localb);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.d
 * JD-Core Version:    0.6.2
 */