package retrofit.mime;

import java.io.IOException;
import java.io.OutputStream;

public abstract interface TypedOutput
{
  public abstract String fileName();

  public abstract long length();

  public abstract String mimeType();

  public abstract void writeTo(OutputStream paramOutputStream)
    throws IOException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.mime.TypedOutput
 * JD-Core Version:    0.6.2
 */