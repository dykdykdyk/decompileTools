package retrofit2;

import a.i;
import java.io.IOException;
import okhttp3.ai;
import okhttp3.av;

class RequestBuilder$ContentTypeOverridingRequestBody extends av
{
  private final ai contentType;
  private final av delegate;

  RequestBuilder$ContentTypeOverridingRequestBody(av paramav, ai paramai)
  {
    this.delegate = paramav;
    this.contentType = paramai;
  }

  public long contentLength()
    throws IOException
  {
    return this.delegate.contentLength();
  }

  public ai contentType()
  {
    return this.contentType;
  }

  public void writeTo(i parami)
    throws IOException
  {
    this.delegate.writeTo(parami);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.RequestBuilder.ContentTypeOverridingRequestBody
 * JD-Core Version:    0.6.2
 */