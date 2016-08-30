package okhttp3.internal.a;

import a.f;
import a.k;
import java.io.IOException;
import java.util.List;
import java.util.Map;

final class ab
{
  private final f a;

  ab(f paramf)
  {
    this.a = paramf;
  }

  private void a(int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt1 < paramInt2)
    {
      this.a.b(paramInt1 | 0x0);
      return;
    }
    this.a.b(paramInt2 | 0x0);
    paramInt1 -= paramInt2;
    while (paramInt1 >= 128)
    {
      this.a.b(paramInt1 & 0x7F | 0x80);
      paramInt1 >>>= 7;
    }
    this.a.b(paramInt1);
  }

  private void a(k paramk)
    throws IOException
  {
    a(paramk.c.length, 127);
    this.a.a(paramk);
  }

  final void a(List<x> paramList)
    throws IOException
  {
    int j = paramList.size();
    int i = 0;
    if (i < j)
    {
      k localk = ((x)paramList.get(i)).h.c();
      Integer localInteger = (Integer)z.b().get(localk);
      if (localInteger != null)
      {
        a(localInteger.intValue() + 1, 15);
        a(((x)paramList.get(i)).i);
      }
      while (true)
      {
        i += 1;
        break;
        this.a.b(0);
        a(localk);
        a(((x)paramList.get(i)).i);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ab
 * JD-Core Version:    0.6.2
 */