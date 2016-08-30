package com.baidu.android.pushservice.a.a;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class f$c
  implements f.b
{
  public String a(Map<String, f.a> paramMap)
  {
    Object localObject2 = null;
    Iterator localIterator = paramMap.keySet().iterator();
    Object localObject1 = null;
    Object localObject3;
    Object localObject4;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      f.a locala = (f.a)paramMap.get(str);
      localObject3 = str;
      localObject4 = locala;
      if (localObject1 != null)
      {
        if (locala.c >= localObject1.c)
          break label96;
        localObject4 = locala;
        localObject3 = str;
      }
    }
    while (true)
    {
      localObject2 = localObject3;
      localObject1 = localObject4;
      break;
      return localObject2;
      label96: localObject3 = localObject2;
      localObject4 = localObject1;
    }
  }

  public void a(f.a parama)
  {
    parama.b += 1;
    parama.c = System.currentTimeMillis();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.a.f.c
 * JD-Core Version:    0.6.2
 */