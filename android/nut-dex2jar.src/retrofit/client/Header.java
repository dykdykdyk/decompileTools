package retrofit.client;

public final class Header
{
  private final String name;
  private final String value;

  public Header(String paramString1, String paramString2)
  {
    this.name = paramString1;
    this.value = paramString2;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (Header)paramObject;
      if (this.name != null)
      {
        if (this.name.equals(paramObject.name));
      }
      else
        while (paramObject.name != null)
          return false;
      if (this.value == null)
        break;
    }
    while (this.value.equals(paramObject.value));
    while (true)
    {
      return false;
      if (paramObject.value == null)
        break;
    }
  }

  public final String getName()
  {
    return this.name;
  }

  public final String getValue()
  {
    return this.value;
  }

  public final int hashCode()
  {
    int j = 0;
    if (this.name != null);
    for (int i = this.name.hashCode(); ; i = 0)
    {
      if (this.value != null)
        j = this.value.hashCode();
      return i * 31 + j;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.name != null)
    {
      str = this.name;
      localStringBuilder = localStringBuilder.append(str).append(": ");
      if (this.value == null)
        break label58;
    }
    label58: for (String str = this.value; ; str = "")
    {
      return str;
      str = "";
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.Header
 * JD-Core Version:    0.6.2
 */