package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class et extends ef
{
  et(es parames)
  {
  }

  public final void a(Object paramObject)
  {
    if ((paramObject instanceof Map))
    {
      localObject1 = (Map)paramObject;
      paramObject = this.a.b.a;
      if (paramObject.a.size() <= 0)
        paramObject.a = ((Map)localObject1);
    }
    else
    {
      this.a.b.c = true;
      return;
    }
    new ArrayList();
    new ArrayList();
    Object localObject1 = paramObject.a.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject1).next();
      List localList = (List)localEntry.getKey();
      Iterator localIterator = paramObject.a.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (Map.Entry)localIterator.next();
        Object localObject3 = (List)localEntry.getKey();
        if (!localList.equals(localObject3))
        {
          paramObject.a.put(localObject3, ((Map.Entry)localObject2).getValue());
        }
        else
        {
          localObject3 = (eh)localEntry.getValue();
          localObject2 = (eh)((Map.Entry)localObject2).getValue();
          eg.a((eh)localObject3, (eh)localObject2);
          paramObject.a.remove(localList);
          paramObject.a.put(localList, localObject2);
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.et
 * JD-Core Version:    0.6.2
 */