package rx.c.d;

import java.util.Queue;

final class b
  implements rx.b.a
{
  b(a parama)
  {
  }

  public final void call()
  {
    int j = 0;
    int i = 0;
    int k = this.a.a.size();
    if (k < this.a.b)
    {
      j = this.a.c;
      while (i < j - k)
      {
        this.a.a.add(this.a.c());
        i += 1;
      }
    }
    if (k > this.a.c)
    {
      int m = this.a.c;
      i = j;
      while (i < k - m)
      {
        this.a.a.poll();
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b
 * JD-Core Version:    0.6.2
 */