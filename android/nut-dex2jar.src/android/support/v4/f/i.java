package android.support.v4.f;

import java.util.Iterator;

final class i<T>
  implements Iterator<T>
{
  final int a;
  int b;
  int c;
  boolean d = false;

  i(h paramh, int paramInt)
  {
    this.a = paramInt;
    this.b = paramh.a();
  }

  public final boolean hasNext()
  {
    return this.c < this.b;
  }

  public final T next()
  {
    Object localObject = this.e.a(this.c, this.a);
    this.c += 1;
    this.d = true;
    return localObject;
  }

  public final void remove()
  {
    if (!this.d)
      throw new IllegalStateException();
    this.c -= 1;
    this.b -= 1;
    this.d = false;
    this.e.a(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.i
 * JD-Core Version:    0.6.2
 */