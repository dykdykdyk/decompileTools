package com.google.zxing.b.a;

public abstract class q
{
  private final int a;

  protected q(int paramInt)
  {
    this.a = paramInt;
  }

  public static void a(String paramString, StringBuilder paramStringBuilder)
  {
    if ((paramString != null) && (!paramString.isEmpty()))
    {
      if (paramStringBuilder.length() > 0)
        paramStringBuilder.append('\n');
      paramStringBuilder.append(paramString);
    }
  }

  public static void a(String[] paramArrayOfString, StringBuilder paramStringBuilder)
  {
    if (paramArrayOfString != null)
    {
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfString[i], paramStringBuilder);
        i += 1;
      }
    }
  }

  public abstract String a();

  public final String toString()
  {
    return a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.q
 * JD-Core Version:    0.6.2
 */