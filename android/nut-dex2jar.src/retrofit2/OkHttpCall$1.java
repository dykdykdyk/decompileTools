package retrofit2;

import java.io.IOException;
import okhttp3.az;
import okhttp3.g;
import okhttp3.i;

class OkHttpCall$1
  implements i
{
  OkHttpCall$1(OkHttpCall paramOkHttpCall, Callback paramCallback)
  {
  }

  private void callFailure(Throwable paramThrowable)
  {
    try
    {
      this.val$callback.onFailure(this.this$0, paramThrowable);
      return;
    }
    catch (Throwable paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }

  private void callSuccess(Response<T> paramResponse)
  {
    try
    {
      this.val$callback.onResponse(this.this$0, paramResponse);
      return;
    }
    catch (Throwable paramResponse)
    {
      paramResponse.printStackTrace();
    }
  }

  public void onFailure(g paramg, IOException paramIOException)
  {
    try
    {
      this.val$callback.onFailure(this.this$0, paramIOException);
      return;
    }
    catch (Throwable paramg)
    {
      paramg.printStackTrace();
    }
  }

  public void onResponse(g paramg, az paramaz)
    throws IOException
  {
    try
    {
      paramg = this.this$0.parseResponse(paramaz);
      callSuccess(paramg);
      return;
    }
    catch (Throwable paramg)
    {
      callFailure(paramg);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.OkHttpCall.1
 * JD-Core Version:    0.6.2
 */