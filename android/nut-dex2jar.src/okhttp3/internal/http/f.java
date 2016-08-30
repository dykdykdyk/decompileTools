package okhttp3.internal.http;

import a.aa;
import a.j;
import a.n;
import java.io.IOException;

abstract class f
  implements aa
{
  protected final n a = new n(this.c.b.timeout());
  protected boolean b;

  private f(e parame)
  {
  }

  protected final void a(boolean paramBoolean)
    throws IOException
  {
    if (this.c.d == 6);
    do
    {
      return;
      if (this.c.d != 5)
        throw new IllegalStateException("state: " + this.c.d);
      e.a(this.a);
      this.c.d = 6;
    }
    while (this.c.a == null);
    ab localab = this.c.a;
    if (!paramBoolean);
    for (paramBoolean = true; ; paramBoolean = false)
    {
      localab.a(paramBoolean, this.c);
      return;
    }
  }

  public a.ab timeout()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.f
 * JD-Core Version:    0.6.2
 */