package u.aly;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class cy
  implements Comparator
{
  public final int compare(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) && (paramObject2 == null))
      return 0;
    if (paramObject1 == null)
      return -1;
    if (paramObject2 == null)
      return 1;
    if ((paramObject1 instanceof List))
      return cx.a((List)paramObject1, (List)paramObject2);
    if ((paramObject1 instanceof Set))
      return cx.a((Set)paramObject1, (Set)paramObject2);
    if ((paramObject1 instanceof Map))
      return cx.a((Map)paramObject1, (Map)paramObject2);
    if ((paramObject1 instanceof byte[]))
      return cx.a((byte[])paramObject1, (byte[])paramObject2);
    return cx.a((Comparable)paramObject1, (Comparable)paramObject2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cy
 * JD-Core Version:    0.6.2
 */