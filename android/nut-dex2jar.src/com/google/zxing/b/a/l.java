package com.google.zxing.b.a;

public final class l extends u
{
  private static String a(int paramInt, String paramString)
  {
    if (paramString.charAt(paramInt) != '(')
      return null;
    paramString = paramString.substring(paramInt + 1);
    StringBuilder localStringBuilder = new StringBuilder();
    paramInt = 0;
    while (paramInt < paramString.length())
    {
      char c = paramString.charAt(paramInt);
      if (c == ')')
        return localStringBuilder.toString();
      if ((c >= '0') && (c <= '9'))
      {
        localStringBuilder.append(c);
        paramInt += 1;
      }
      else
      {
        return null;
      }
    }
    return localStringBuilder.toString();
  }

  private static String b(int paramInt, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = paramString.substring(paramInt);
    paramInt = 0;
    if (paramInt < paramString.length())
    {
      char c = paramString.charAt(paramInt);
      if (c == '(')
      {
        if (a(paramInt, paramString) == null)
          localStringBuilder.append('(');
      }
      else
        while (true)
        {
          paramInt += 1;
          break;
          localStringBuilder.append(c);
        }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.l
 * JD-Core Version:    0.6.2
 */