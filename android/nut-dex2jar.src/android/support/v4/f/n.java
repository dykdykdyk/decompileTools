package android.support.v4.f;

public final class n<F, S>
{
  public final F a;
  public final S b;

  public n(F paramF, S paramS)
  {
    this.a = paramF;
    this.b = paramS;
  }

  private static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof n));
    do
    {
      return false;
      paramObject = (n)paramObject;
    }
    while ((!a(paramObject.a, this.a)) || (!a(paramObject.b, this.b)));
    return true;
  }

  public final int hashCode()
  {
    int j = 0;
    int i;
    if (this.a == null)
    {
      i = 0;
      if (this.b != null)
        break label33;
    }
    while (true)
    {
      return i ^ j;
      i = this.a.hashCode();
      break;
      label33: j = this.b.hashCode();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.n
 * JD-Core Version:    0.6.2
 */