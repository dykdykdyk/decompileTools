package okhttp3.internal.a;

import a.aa;
import a.ab;
import a.f;
import a.j;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

final class ad
  implements aa
{
  int a;
  byte b;
  int c;
  int d;
  short e;
  private final j f;

  public ad(j paramj)
  {
    this.f = paramj;
  }

  public final void close()
    throws IOException
  {
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    if (this.d == 0)
    {
      this.f.f(this.e);
      this.e = 0;
      if ((this.b & 0x4) == 0);
    }
    do
    {
      return -1L;
      int i = this.c;
      int j = ac.a(this.f);
      this.d = j;
      this.a = j;
      byte b1 = (byte)(this.f.f() & 0xFF);
      this.b = ((byte)(this.f.f() & 0xFF));
      if (ac.b().isLoggable(Level.FINE))
        ac.b().fine(ae.a(true, this.c, this.a, b1, this.b));
      this.c = (this.f.h() & 0x7FFFFFFF);
      if (b1 != 9)
        throw ac.a("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b1) });
      if (this.c == i)
        break;
      throw ac.a("TYPE_CONTINUATION streamId changed", new Object[0]);
      paramLong = this.f.read(paramf, Math.min(paramLong, this.d));
    }
    while (paramLong == -1L);
    this.d = ((int)(this.d - paramLong));
    return paramLong;
  }

  public final ab timeout()
  {
    return this.f.timeout();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ad
 * JD-Core Version:    0.6.2
 */