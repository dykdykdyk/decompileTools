package retrofit;

import java.io.IOException;
import java.io.InputStream;
import retrofit.mime.TypedInput;

class ExceptionCatchingTypedInput
  implements TypedInput
{
  private final TypedInput delegate;
  private final ExceptionCatchingTypedInput.ExceptionCatchingInputStream delegateStream;

  ExceptionCatchingTypedInput(TypedInput paramTypedInput)
    throws IOException
  {
    this.delegate = paramTypedInput;
    this.delegateStream = new ExceptionCatchingTypedInput.ExceptionCatchingInputStream(paramTypedInput.in());
  }

  IOException getThrownException()
  {
    return ExceptionCatchingTypedInput.ExceptionCatchingInputStream.access$000(this.delegateStream);
  }

  public InputStream in()
    throws IOException
  {
    return this.delegateStream;
  }

  public long length()
  {
    return this.delegate.length();
  }

  public String mimeType()
  {
    return this.delegate.mimeType();
  }

  boolean threwException()
  {
    return ExceptionCatchingTypedInput.ExceptionCatchingInputStream.access$000(this.delegateStream) != null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.ExceptionCatchingTypedInput
 * JD-Core Version:    0.6.2
 */