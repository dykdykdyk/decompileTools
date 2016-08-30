package retrofit.converter;

import java.io.IOException;
import java.io.OutputStream;
import retrofit.mime.TypedOutput;

class GsonConverter$JsonTypedOutput
  implements TypedOutput
{
  private final byte[] jsonBytes;
  private final String mimeType;

  GsonConverter$JsonTypedOutput(byte[] paramArrayOfByte, String paramString)
  {
    this.jsonBytes = paramArrayOfByte;
    this.mimeType = ("application/json; charset=" + paramString);
  }

  public String fileName()
  {
    return null;
  }

  public long length()
  {
    return this.jsonBytes.length;
  }

  public String mimeType()
  {
    return this.mimeType;
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    paramOutputStream.write(this.jsonBytes);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.converter.GsonConverter.JsonTypedOutput
 * JD-Core Version:    0.6.2
 */