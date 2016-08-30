package io.fabric.sdk.android.services.b;

import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class a
{
  private static final Pattern c = Pattern.compile("http(s?)://[^\\/]+", 2);
  public final String a;
  public final o b;
  private final io.fabric.sdk.android.services.network.l d;
  private final int e;
  private final String f;

  public a(o paramo, String paramString1, String paramString2, io.fabric.sdk.android.services.network.l paraml, int paramInt)
  {
    if (paramString2 == null)
      throw new IllegalArgumentException("url must not be null.");
    if (paraml == null)
      throw new IllegalArgumentException("requestFactory must not be null.");
    this.b = paramo;
    this.f = paramString1;
    paramo = paramString2;
    if (!l.c(this.f))
      paramo = c.matcher(paramString2).replaceFirst(this.f);
    this.a = paramo;
    this.d = paraml;
    this.e = paramInt;
  }

  public final HttpRequest a(Map<String, String> paramMap)
  {
    paramMap = this.d.a(this.e, this.a, paramMap);
    paramMap.a().setUseCaches(false);
    paramMap.a().setConnectTimeout(10000);
    return paramMap.a("User-Agent", "Crashlytics Android SDK/" + this.b.a()).a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.a
 * JD-Core Version:    0.6.2
 */