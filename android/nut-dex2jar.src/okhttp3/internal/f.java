package okhttp3.internal;

import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import okhttp3.a;
import okhttp3.ac;
import okhttp3.am;
import okhttp3.internal.b.c;
import okhttp3.internal.http.ab;
import okhttp3.o;
import okhttp3.q;

public abstract class f
{
  public static final Logger a = Logger.getLogger(am.class.getName());
  public static f b;

  public abstract c a(o paramo, a parama, ab paramab);

  public abstract g a(am paramam);

  public abstract n a(o paramo);

  public abstract void a(ac paramac, String paramString);

  public abstract void a(q paramq, SSLSocket paramSSLSocket, boolean paramBoolean);

  public abstract boolean a(o paramo, c paramc);

  public abstract void b(o paramo, c paramc);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.f
 * JD-Core Version:    0.6.2
 */