package u.aly;

import android.content.Context;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class m
{
  public Context a;
  public h b;
  private final int c = 128;
  private final int d = 256;
  private final int e = 10;

  public m(Context paramContext)
  {
    if (paramContext == null)
      throw new RuntimeException("Context is null, can't track event");
    this.a = paramContext.getApplicationContext();
    this.b = h.a(this.a);
  }

  public static boolean a(String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.trim().getBytes().length;
      if ((i > 0) && (i <= 128))
        return true;
    }
    ct.d("Event id is empty or too long in tracking Event");
    return false;
  }

  public static boolean b(String paramString)
  {
    if (paramString == null);
    while (paramString.trim().getBytes().length <= 256)
      return true;
    ct.d("Event label or value is empty or too long in tracking Event");
    return false;
  }

  public final void a(String paramString, Map<String, Object> paramMap, long paramLong)
  {
    while (true)
    {
      try
      {
        if (!a(paramString))
          return;
        Object localObject;
        Map.Entry localEntry;
        if (paramMap.isEmpty())
        {
          ct.d("map is null or empty in onEvent");
          i = 0;
          if (i == 0)
            break label289;
          localObject = new ai();
          ((ai)localObject).c = paramString;
          ((ai)localObject).d = System.currentTimeMillis();
          if (paramLong > 0L)
            ((ai)localObject).e = paramLong;
          ((ai)localObject).a = 1;
          paramString = paramMap.entrySet().iterator();
          i = 0;
          if ((i < 10) && (paramString.hasNext()))
          {
            paramMap = (Map.Entry)paramString.next();
            ((ai)localObject).f.put(paramMap.getKey(), paramMap.getValue());
            i += 1;
            continue;
          }
        }
        else
        {
          localObject = paramMap.entrySet().iterator();
          if (!((Iterator)localObject).hasNext())
            break label290;
          localEntry = (Map.Entry)((Iterator)localObject).next();
          if (!a((String)localEntry.getKey()))
          {
            i = 0;
            continue;
          }
          if (localEntry.getValue() == null)
          {
            i = 0;
            continue;
          }
          if ((!(localEntry.getValue() instanceof String)) || (b(localEntry.getValue().toString())))
            continue;
          i = 0;
          continue;
        }
        if (((ai)localObject).b == null)
          ((ai)localObject).b = w.d(this.a);
        this.b.a((o)localObject);
        return;
      }
      catch (Exception paramString)
      {
        ct.b("Exception occurred in Mobclick.onEvent(). ", paramString);
      }
      label289: return;
      label290: int i = 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.m
 * JD-Core Version:    0.6.2
 */