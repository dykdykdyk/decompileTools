package retrofit2;

import a.j;
import a.q;
import java.io.IOException;
import okhttp3.ai;
import okhttp3.bb;

final class OkHttpCall$ExceptionCatchingRequestBody extends bb
{
  private final bb delegate;
  IOException thrownException;

  OkHttpCall$ExceptionCatchingRequestBody(bb parambb)
  {
    this.delegate = parambb;
  }

  public final void close()
  {
    this.delegate.close();
  }

  public final long contentLength()
  {
    return this.delegate.contentLength();
  }

  public final ai contentType()
  {
    return this.delegate.contentType();
  }

  public final j source()
  {
    return q.a(new OkHttpCall.ExceptionCatchingRequestBody.1(this, this.delegate.source()));
  }

  final void throwIfCaught()
    throws IOException
  {
    if (this.thrownException != null)
      throw this.thrownException;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.OkHttpCall.ExceptionCatchingRequestBody
 * JD-Core Version:    0.6.2
 */