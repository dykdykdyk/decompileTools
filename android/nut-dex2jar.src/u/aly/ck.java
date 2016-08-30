package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ck
{
  private static final Map<String, ck> k;
  private final short l;
  private final String m;

  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(ck.class).iterator();
    while (localIterator.hasNext())
    {
      ck localck = (ck)localIterator.next();
      k.put(localck.m, localck);
    }
  }

  private ck(short paramShort, String paramString)
  {
    this.l = paramShort;
    this.m = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ck
 * JD-Core Version:    0.6.2
 */