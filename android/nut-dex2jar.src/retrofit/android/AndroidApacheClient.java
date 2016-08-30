package retrofit.android;

import android.net.http.AndroidHttpClient;
import retrofit.client.ApacheClient;

public final class AndroidApacheClient extends ApacheClient
{
  public AndroidApacheClient()
  {
    super(AndroidHttpClient.newInstance("Retrofit"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.android.AndroidApacheClient
 * JD-Core Version:    0.6.2
 */