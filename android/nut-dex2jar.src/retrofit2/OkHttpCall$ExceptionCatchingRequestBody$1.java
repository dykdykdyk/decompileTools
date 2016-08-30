package retrofit2;

import a.aa;
import a.f;
import a.m;
import java.io.IOException;

class OkHttpCall$ExceptionCatchingRequestBody$1 extends m
{
  OkHttpCall$ExceptionCatchingRequestBody$1(OkHttpCall.ExceptionCatchingRequestBody paramExceptionCatchingRequestBody, aa paramaa)
  {
    super(paramaa);
  }

  public long read(f paramf, long paramLong)
    throws IOException
  {
    try
    {
      paramLong = super.read(paramf, paramLong);
      return paramLong;
    }
    catch (IOException paramf)
    {
      this.this$0.thrownException = paramf;
    }
    throw paramf;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.OkHttpCall.ExceptionCatchingRequestBody.1
 * JD-Core Version:    0.6.2
 */