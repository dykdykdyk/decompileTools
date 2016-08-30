package retrofit.client;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;
import retrofit.mime.TypedOutput;

class ApacheClient$TypedOutputEntity extends AbstractHttpEntity
{
  final TypedOutput typedOutput;

  ApacheClient$TypedOutputEntity(TypedOutput paramTypedOutput)
  {
    this.typedOutput = paramTypedOutput;
    setContentType(paramTypedOutput.mimeType());
  }

  public InputStream getContent()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    this.typedOutput.writeTo(localByteArrayOutputStream);
    return new ByteArrayInputStream(localByteArrayOutputStream.toByteArray());
  }

  public long getContentLength()
  {
    return this.typedOutput.length();
  }

  public boolean isRepeatable()
  {
    return true;
  }

  public boolean isStreaming()
  {
    return false;
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    this.typedOutput.writeTo(paramOutputStream);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.ApacheClient.TypedOutputEntity
 * JD-Core Version:    0.6.2
 */