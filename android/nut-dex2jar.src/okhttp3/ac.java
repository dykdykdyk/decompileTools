package okhttp3;

import java.util.ArrayList;
import java.util.List;

public final class ac
{
  final List<String> a = new ArrayList(20);

  private static void d(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("name == null");
    if (paramString1.isEmpty())
      throw new IllegalArgumentException("name is empty");
    int j = paramString1.length();
    int i = 0;
    int k;
    while (i < j)
    {
      k = paramString1.charAt(i);
      if ((k <= 31) || (k >= 127))
        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(i), paramString1 }));
      i += 1;
    }
    if (paramString2 == null)
      throw new IllegalArgumentException("value == null");
    j = paramString2.length();
    i = 0;
    while (i < j)
    {
      k = paramString2.charAt(i);
      if ((k <= 31) || (k >= 127))
        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in %s value: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(i), paramString1, paramString2 }));
      i += 1;
    }
  }

  public final ab a()
  {
    return new ab(this, (byte)0);
  }

  public final ac a(String paramString)
  {
    int j;
    for (int i = 0; i < this.a.size(); i = j + 2)
    {
      j = i;
      if (paramString.equalsIgnoreCase((String)this.a.get(i)))
      {
        this.a.remove(i);
        this.a.remove(i);
        j = i - 2;
      }
    }
    return this;
  }

  public final ac a(String paramString1, String paramString2)
  {
    d(paramString1, paramString2);
    return b(paramString1, paramString2);
  }

  final ac b(String paramString1, String paramString2)
  {
    this.a.add(paramString1);
    this.a.add(paramString2.trim());
    return this;
  }

  public final ac c(String paramString1, String paramString2)
  {
    d(paramString1, paramString2);
    a(paramString1);
    b(paramString1, paramString2);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ac
 * JD-Core Version:    0.6.2
 */