package okhttp3;

import a.f;
import a.i;
import java.io.IOException;
import java.util.List;
import okhttp3.internal.o;

public final class y extends av
{
  private static final ai a = ai.a("application/x-www-form-urlencoded");
  private final List<String> b;
  private final List<String> c;

  private y(List<String> paramList1, List<String> paramList2)
  {
    this.b = o.a(paramList1);
    this.c = o.a(paramList2);
  }

  private long a(i parami, boolean paramBoolean)
  {
    long l = 0L;
    if (paramBoolean);
    for (parami = new f(); ; parami = parami.a())
    {
      int j = this.b.size();
      int i = 0;
      while (i < j)
      {
        if (i > 0)
          parami.b(38);
        parami.a((String)this.b.get(i));
        parami.b(61);
        parami.a((String)this.c.get(i));
        i += 1;
      }
    }
    if (paramBoolean)
    {
      l = parami.b;
      parami.p();
    }
    return l;
  }

  public final long contentLength()
  {
    return a(null, true);
  }

  public final ai contentType()
  {
    return a;
  }

  public final void writeTo(i parami)
    throws IOException
  {
    a(parami, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.y
 * JD-Core Version:    0.6.2
 */