package android.support.v4.f;

public final class q<T>
  implements p<T>
{
  private final Object[] a;
  private int b;

  public q(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("The max pool size must be > 0");
    this.a = new Object[paramInt];
  }

  public final T a()
  {
    if (this.b > 0)
    {
      int i = this.b - 1;
      Object localObject = this.a[i];
      this.a[i] = null;
      this.b -= 1;
      return localObject;
    }
    return null;
  }

  public final boolean a(T paramT)
  {
    boolean bool = false;
    int i = 0;
    if (i < this.b)
      if (this.a[i] != paramT);
    for (i = 1; ; i = 0)
    {
      if (i == 0)
        break label50;
      throw new IllegalStateException("Already in the pool!");
      i += 1;
      break;
    }
    label50: if (this.b < this.a.length)
    {
      this.a[this.b] = paramT;
      this.b += 1;
      bool = true;
    }
    return bool;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.q
 * JD-Core Version:    0.6.2
 */