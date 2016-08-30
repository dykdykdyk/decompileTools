package retrofit;

import java.io.IOException;
import java.io.OutputStream;
import retrofit.mime.TypedOutput;

class RequestBuilder$MimeOverridingTypedOutput
  implements TypedOutput
{
  private final TypedOutput delegate;
  private final String mimeType;

  RequestBuilder$MimeOverridingTypedOutput(TypedOutput paramTypedOutput, String paramString)
  {
    this.delegate = paramTypedOutput;
    this.mimeType = paramString;
  }

  public String fileName()
  {
    return this.delegate.fileName();
  }

  public long length()
  {
    return this.delegate.length();
  }

  public String mimeType()
  {
    return this.mimeType;
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    this.delegate.writeTo(paramOutputStream);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RequestBuilder.MimeOverridingTypedOutput
 * JD-Core Version:    0.6.2
 */