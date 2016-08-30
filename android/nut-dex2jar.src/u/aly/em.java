package u.aly;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class em extends ef
{
  public em(ej paramej)
  {
  }

  public final void a(Object paramObject)
  {
    if (paramObject.equals("success"))
    {
      paramObject = this.a;
      Iterator localIterator = paramObject.a.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        List localList = (List)((Map.Entry)localIterator.next()).getKey();
        if (!paramObject.g.contains(localList))
          paramObject.g.add(TextUtils.join("!", localList));
      }
      if (paramObject.g.size() > 0)
        ey.a(new ef(), paramObject.g);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.em
 * JD-Core Version:    0.6.2
 */