package okhttp3;

import java.util.Collections;
import java.util.Date;
import java.util.List;
import okhttp3.internal.http.n;

public final class ab
{
  public final String[] a;

  private ab(ac paramac)
  {
    this.a = ((String[])paramac.a.toArray(new String[paramac.a.size()]));
  }

  private ab(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
  }

  public static ab a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length % 2 != 0)
      throw new IllegalArgumentException("Expected alternating header names and values");
    paramArrayOfString = (String[])paramArrayOfString.clone();
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (paramArrayOfString[i] == null)
        throw new IllegalArgumentException("Headers cannot be null");
      paramArrayOfString[i] = paramArrayOfString[i].trim();
      i += 1;
    }
    i = 0;
    while (i < paramArrayOfString.length)
    {
      String str1 = paramArrayOfString[i];
      String str2 = paramArrayOfString[(i + 1)];
      if ((str1.length() == 0) || (str1.indexOf(0) != -1) || (str2.indexOf(0) != -1))
        throw new IllegalArgumentException("Unexpected header: " + str1 + ": " + str2);
      i += 2;
    }
    return new ab(paramArrayOfString);
  }

  public final String a(int paramInt)
  {
    return this.a[(paramInt * 2)];
  }

  public final String a(String paramString)
  {
    String[] arrayOfString = this.a;
    int i = arrayOfString.length - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase(arrayOfString[i]))
        return arrayOfString[(i + 1)];
      i -= 2;
    }
    return null;
  }

  public final ac a()
  {
    ac localac = new ac();
    Collections.addAll(localac.a, this.a);
    return localac;
  }

  public final String b(int paramInt)
  {
    return this.a[(paramInt * 2 + 1)];
  }

  public final Date b(String paramString)
  {
    paramString = a(paramString);
    if (paramString != null)
      return n.a(paramString);
    return null;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = this.a.length / 2;
    while (i < j)
    {
      localStringBuilder.append(a(i)).append(": ").append(b(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ab
 * JD-Core Version:    0.6.2
 */