package okhttp3.internal.a;

import java.io.IOException;
import java.util.List;
import java.util.Set;
import okhttp3.internal.h;

final class j extends h
{
  j(e parame, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList, boolean paramBoolean)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    e.j(this.e).b();
    try
    {
      this.e.i.a(this.a, a.l);
      synchronized (this.e)
      {
        e.k(this.e).remove(Integer.valueOf(this.a));
        return;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.j
 * JD-Core Version:    0.6.2
 */