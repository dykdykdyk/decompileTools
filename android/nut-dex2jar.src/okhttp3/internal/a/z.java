package okhttp3.internal.a;

import a.k;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

final class z
{
  private static final x[] a;
  private static final Map<k, Integer> b = Collections.unmodifiableMap(localLinkedHashMap);

  static
  {
    int i = 0;
    a = new x[] { new x(x.e, ""), new x(x.b, "GET"), new x(x.b, "POST"), new x(x.c, "/"), new x(x.c, "/index.html"), new x(x.d, "http"), new x(x.d, "https"), new x(x.a, "200"), new x(x.a, "204"), new x(x.a, "206"), new x(x.a, "304"), new x(x.a, "400"), new x(x.a, "404"), new x(x.a, "500"), new x("accept-charset", ""), new x("accept-encoding", "gzip, deflate"), new x("accept-language", ""), new x("accept-ranges", ""), new x("accept", ""), new x("access-control-allow-origin", ""), new x("age", ""), new x("allow", ""), new x("authorization", ""), new x("cache-control", ""), new x("content-disposition", ""), new x("content-encoding", ""), new x("content-language", ""), new x("content-length", ""), new x("content-location", ""), new x("content-range", ""), new x("content-type", ""), new x("cookie", ""), new x("date", ""), new x("etag", ""), new x("expect", ""), new x("expires", ""), new x("from", ""), new x("host", ""), new x("if-match", ""), new x("if-modified-since", ""), new x("if-none-match", ""), new x("if-range", ""), new x("if-unmodified-since", ""), new x("last-modified", ""), new x("link", ""), new x("location", ""), new x("max-forwards", ""), new x("proxy-authenticate", ""), new x("proxy-authorization", ""), new x("range", ""), new x("referer", ""), new x("refresh", ""), new x("retry-after", ""), new x("server", ""), new x("set-cookie", ""), new x("strict-transport-security", ""), new x("transfer-encoding", ""), new x("user-agent", ""), new x("vary", ""), new x("via", ""), new x("www-authenticate", "") };
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(a.length);
    while (i < a.length)
    {
      if (!localLinkedHashMap.containsKey(a[i].h))
        localLinkedHashMap.put(a[i].h, Integer.valueOf(i));
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.z
 * JD-Core Version:    0.6.2
 */