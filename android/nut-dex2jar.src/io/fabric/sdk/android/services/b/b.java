package io.fabric.sdk.android.services.b;

public final class b
{
  public final String a;
  public final boolean b;

  b(String paramString, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramBoolean;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (b)paramObject;
      if (this.b != paramObject.b)
        return false;
      if (this.a == null)
        break;
    }
    while (this.a.equals(paramObject.a));
    while (true)
    {
      return false;
      if (paramObject.a == null)
        break;
    }
  }

  public final int hashCode()
  {
    int j = 0;
    if (this.a != null);
    for (int i = this.a.hashCode(); ; i = 0)
    {
      if (this.b)
        j = 1;
      return i * 31 + j;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.b
 * JD-Core Version:    0.6.2
 */