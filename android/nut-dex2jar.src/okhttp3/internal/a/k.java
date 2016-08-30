package okhttp3.internal.a;

import a.f;
import java.io.IOException;
import java.util.Set;
import okhttp3.internal.h;

final class k extends h
{
  k(e parame, String paramString, Object[] paramArrayOfObject, int paramInt1, f paramf, int paramInt2, boolean paramBoolean)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    try
    {
      e.j(this.f).a(this.c, this.d);
      this.f.i.a(this.a, a.l);
      synchronized (this.f)
      {
        e.k(this.f).remove(Integer.valueOf(this.a));
        return;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.k
 * JD-Core Version:    0.6.2
 */