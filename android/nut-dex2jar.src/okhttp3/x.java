package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

final class x
  implements w
{
  public final List<InetAddress> a(String paramString)
    throws UnknownHostException
  {
    if (paramString == null)
      throw new UnknownHostException("hostname == null");
    return Arrays.asList(InetAddress.getAllByName(paramString));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.x
 * JD-Core Version:    0.6.2
 */