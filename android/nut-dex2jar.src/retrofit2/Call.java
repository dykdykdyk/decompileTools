package retrofit2;

import java.io.IOException;
import okhttp3.at;

public abstract interface Call<T> extends Cloneable
{
  public abstract void cancel();

  public abstract Call<T> clone();

  public abstract void enqueue(Callback<T> paramCallback);

  public abstract Response<T> execute()
    throws IOException;

  public abstract boolean isCanceled();

  public abstract boolean isExecuted();

  public abstract at request();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Call
 * JD-Core Version:    0.6.2
 */