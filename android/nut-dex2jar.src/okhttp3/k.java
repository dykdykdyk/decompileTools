package okhttp3;

import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.c.f;

public final class k
{
  final List<l> a = new ArrayList();
  f b;

  public k()
  {
  }

  k(j paramj)
  {
    this.a.addAll(j.a(paramj));
    this.b = j.b(paramj);
  }

  public final j a()
  {
    return new j(this, (byte)0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.k
 * JD-Core Version:    0.6.2
 */