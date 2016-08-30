package retrofit2;

import a.j;
import okhttp3.ai;
import okhttp3.bb;

final class OkHttpCall$NoContentResponseBody extends bb
{
  private final long contentLength;
  private final ai contentType;

  OkHttpCall$NoContentResponseBody(ai paramai, long paramLong)
  {
    this.contentType = paramai;
    this.contentLength = paramLong;
  }

  public final long contentLength()
  {
    return this.contentLength;
  }

  public final ai contentType()
  {
    return this.contentType;
  }

  public final j source()
  {
    throw new IllegalStateException("Cannot read raw response body of a converted body.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.OkHttpCall.NoContentResponseBody
 * JD-Core Version:    0.6.2
 */