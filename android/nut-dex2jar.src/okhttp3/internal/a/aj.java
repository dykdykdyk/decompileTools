package okhttp3.internal.a;

import a.j;
import a.k;
import a.p;
import a.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

final class aj
{
  int a;
  final j b = q.a(this.c);
  private final p c = new p(new ak(this, paramj), new al(this));

  public aj(j paramj)
  {
  }

  private k a()
    throws IOException
  {
    int i = this.b.h();
    return this.b.c(i);
  }

  public final List<x> a(int paramInt)
    throws IOException
  {
    this.a += paramInt;
    int i = this.b.h();
    if (i < 0)
      throw new IOException("numberOfPairs < 0: " + i);
    if (i > 1024)
      throw new IOException("numberOfPairs > 1024: " + i);
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      k localk1 = a().c();
      k localk2 = a();
      if (localk1.c.length == 0)
        throw new IOException("name.size == 0");
      localArrayList.add(new x(localk1, localk2));
      paramInt += 1;
    }
    if (this.a > 0)
    {
      this.c.a();
      if (this.a != 0)
        throw new IOException("compressedLimit > 0: " + this.a);
    }
    return localArrayList;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.aj
 * JD-Core Version:    0.6.2
 */