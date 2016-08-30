package com.tencent.open.utils;

public final class u
  implements Cloneable
{
  long a = 101010256L;

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof u)));
    while (this.a != ((u)paramObject).a)
      return false;
    return true;
  }

  public final int hashCode()
  {
    return (int)this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.u
 * JD-Core Version:    0.6.2
 */