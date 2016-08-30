package android.support.v7.widget;

final class ah
{
  int a;
  int b;
  Object c;
  int d;

  ah(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.d = paramInt3;
    this.c = paramObject;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass()))
            return false;
          paramObject = (ah)paramObject;
          if (this.a != paramObject.a)
            return false;
        }
        while ((this.a == 8) && (Math.abs(this.d - this.b) == 1) && (this.d == paramObject.b) && (this.b == paramObject.d));
        if (this.d != paramObject.d)
          return false;
        if (this.b != paramObject.b)
          return false;
        if (this.c == null)
          break;
      }
      while (this.c.equals(paramObject.c));
      return false;
    }
    while (paramObject.c == null);
    return false;
  }

  public final int hashCode()
  {
    return (this.a * 31 + this.b) * 31 + this.d;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(Integer.toHexString(System.identityHashCode(this))).append("[");
    String str;
    switch (this.a)
    {
    case 3:
    case 5:
    case 6:
    case 7:
    default:
      str = "??";
    case 1:
    case 2:
    case 4:
    case 8:
    }
    while (true)
    {
      return str + ",s:" + this.b + "c:" + this.d + ",p:" + this.c + "]";
      str = "add";
      continue;
      str = "rm";
      continue;
      str = "up";
      continue;
      str = "mv";
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ah
 * JD-Core Version:    0.6.2
 */