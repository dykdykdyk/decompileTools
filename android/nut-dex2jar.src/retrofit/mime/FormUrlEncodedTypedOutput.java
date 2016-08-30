package retrofit.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

public final class FormUrlEncodedTypedOutput
  implements TypedOutput
{
  final ByteArrayOutputStream content = new ByteArrayOutputStream();

  public final void addField(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new NullPointerException("name");
    if (paramString2 == null)
      throw new NullPointerException("value");
    if (this.content.size() > 0)
      this.content.write(38);
    try
    {
      paramString1 = URLEncoder.encode(paramString1, "UTF-8");
      paramString2 = URLEncoder.encode(paramString2, "UTF-8");
      this.content.write(paramString1.getBytes("UTF-8"));
      this.content.write(61);
      this.content.write(paramString2.getBytes("UTF-8"));
      return;
    }
    catch (IOException paramString1)
    {
    }
    throw new RuntimeException(paramString1);
  }

  public final String fileName()
  {
    return null;
  }

  public final long length()
  {
    return this.content.size();
  }

  public final String mimeType()
  {
    return "application/x-www-form-urlencoded; charset=UTF-8";
  }

  public final void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    paramOutputStream.write(this.content.toByteArray());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.mime.FormUrlEncodedTypedOutput
 * JD-Core Version:    0.6.2
 */