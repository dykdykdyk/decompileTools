package okhttp3.internal.a;

import java.util.Set;
import okhttp3.internal.h;

final class l extends h
{
  l(e parame, String paramString, Object[] paramArrayOfObject, int paramInt, a parama)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    e.j(this.d).c();
    synchronized (this.d)
    {
      e.k(this.d).remove(Integer.valueOf(this.a));
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.l
 * JD-Core Version:    0.6.2
 */