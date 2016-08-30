package okhttp3;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ai
{
  private static final Pattern c = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
  private static final Pattern d = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
  public final String a;
  final String b;
  private final String e;
  private final String f;

  private ai(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.e = paramString1;
    this.a = paramString2;
    this.f = paramString3;
    this.b = paramString4;
  }

  public static ai a(String paramString)
  {
    Object localObject1 = c.matcher(paramString);
    if (!((Matcher)localObject1).lookingAt())
      return null;
    String str2 = ((Matcher)localObject1).group(1).toLowerCase(Locale.US);
    String str3 = ((Matcher)localObject1).group(2).toLowerCase(Locale.US);
    Matcher localMatcher = d.matcher(paramString);
    int i = ((Matcher)localObject1).end();
    Object localObject2;
    for (localObject1 = null; ; localObject1 = localObject2)
    {
      if (i >= paramString.length())
        break label189;
      localMatcher.region(i, paramString.length());
      if (!localMatcher.lookingAt())
        break;
      String str1 = localMatcher.group(1);
      if ((str1 != null) && (str1.equalsIgnoreCase("charset")))
      {
        if (localMatcher.group(2) != null);
        for (str1 = localMatcher.group(2); ; str1 = localMatcher.group(3))
        {
          localObject2 = str1;
          if (localObject1 == null)
            break;
          localObject2 = str1;
          if (str1.equalsIgnoreCase((String)localObject1))
            break;
          throw new IllegalArgumentException("Multiple different charsets: " + paramString);
        }
      }
      localObject2 = localObject1;
      i = localMatcher.end();
    }
    label189: return new ai(paramString, str2, str3, (String)localObject1);
  }

  public final Charset a()
  {
    if (this.b != null)
      return Charset.forName(this.b);
    return null;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ai)) && (((ai)paramObject).e.equals(this.e));
  }

  public final int hashCode()
  {
    return this.e.hashCode();
  }

  public final String toString()
  {
    return this.e;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ai
 * JD-Core Version:    0.6.2
 */