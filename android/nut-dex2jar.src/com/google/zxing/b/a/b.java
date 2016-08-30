package com.google.zxing.b.a;

import java.util.ArrayList;
import java.util.List;

public final class b extends u
{
  private static String[] a(String paramString1, String paramString2)
  {
    int i = 1;
    Object localObject2;
    for (Object localObject1 = null; i <= 3; localObject1 = localObject2)
    {
      String str = b(paramString1 + i + ':', paramString2, '\r', true);
      if (str == null)
        break;
      localObject2 = localObject1;
      if (localObject1 == null)
        localObject2 = new ArrayList(3);
      ((List)localObject2).add(str);
      i += 1;
    }
    if (localObject1 == null)
      return null;
    return (String[])localObject1.toArray(new String[localObject1.size()]);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.b
 * JD-Core Version:    0.6.2
 */