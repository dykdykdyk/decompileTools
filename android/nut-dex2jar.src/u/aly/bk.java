package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum bk
{
  private static final Map<String, bk> d;
  private final short e;
  private final String f;

  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(bk.class).iterator();
    while (localIterator.hasNext())
    {
      bk localbk = (bk)localIterator.next();
      d.put(localbk.f, localbk);
    }
  }

  private bk(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.bk
 * JD-Core Version:    0.6.2
 */