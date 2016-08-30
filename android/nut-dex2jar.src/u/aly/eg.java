package u.aly;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class eg
  implements Serializable
{
  Map<List<String>, eh> a = new HashMap();
  private long b = 0L;

  static void a(eh parameh1, eh parameh2)
  {
    parameh2.e += parameh1.e;
    parameh2.d += parameh1.d;
    parameh2.c += parameh1.c;
    int i = 0;
    while (i < parameh1.b.size())
    {
      String str = (String)parameh1.b.get(i);
      try
      {
        int j = parameh2.b.size();
        ex.a();
        if (j < 8)
          parameh2.b.add(str);
        while (true)
        {
          j = parameh2.b.size();
          ex.a();
          if (j <= 8)
            break;
          j = 0;
          while (true)
          {
            int k = parameh2.b.size();
            ex.a();
            if (j >= k - 8)
              break;
            parameh2.b.remove(parameh2.b.get(0));
            j += 1;
          }
          parameh2.b.remove(parameh2.b.get(0));
          parameh2.b.add(str);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.eg
 * JD-Core Version:    0.6.2
 */