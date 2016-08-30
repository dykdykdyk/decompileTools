package okhttp3;

import a.e;
import a.k;

final class l
{
  final String a;
  final String b;
  final k c;

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof l)) && (this.a.equals(((l)paramObject).a)) && (this.b.equals(((l)paramObject).b)) && (this.c.equals(((l)paramObject).c));
  }

  public final int hashCode()
  {
    return ((this.a.hashCode() + 527) * 31 + this.b.hashCode()) * 31 + this.c.hashCode();
  }

  public final String toString()
  {
    return this.b + e.a(this.c.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.l
 * JD-Core Version:    0.6.2
 */