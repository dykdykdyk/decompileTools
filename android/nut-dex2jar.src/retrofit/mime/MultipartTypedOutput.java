package retrofit.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

public final class MultipartTypedOutput
  implements TypedOutput
{
  private final String boundary;
  private final byte[] footer;
  private long length;
  private final List<MultipartTypedOutput.MimePart> mimeParts = new LinkedList();

  public MultipartTypedOutput()
  {
    this(UUID.randomUUID().toString());
  }

  MultipartTypedOutput(String paramString)
  {
    this.boundary = paramString;
    this.footer = buildBoundary(paramString, false, true);
    this.length = this.footer.length;
  }

  private static byte[] buildBoundary(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (!paramBoolean1)
        localStringBuilder.append("\r\n");
      localStringBuilder.append("--");
      localStringBuilder.append(paramString);
      if (paramBoolean2)
        localStringBuilder.append("--");
      localStringBuilder.append("\r\n");
      paramString = localStringBuilder.toString().getBytes("UTF-8");
      return paramString;
    }
    catch (IOException paramString)
    {
    }
    throw new RuntimeException("Unable to write multipart boundary", paramString);
  }

  private static byte[] buildHeader(String paramString, TypedOutput paramTypedOutput)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Content-Disposition: form-data; name=\"");
      localStringBuilder.append(paramString);
      if (paramTypedOutput.fileName() != null)
      {
        localStringBuilder.append("\"; filename=\"");
        localStringBuilder.append(paramTypedOutput.fileName());
      }
      localStringBuilder.append("\"\r\nContent-Type: ");
      localStringBuilder.append(paramTypedOutput.mimeType());
      if (paramTypedOutput.length() != -1L)
        localStringBuilder.append("\r\nContent-Length: ").append(paramTypedOutput.length());
      localStringBuilder.append("\r\nContent-Transfer-Encoding: binary\r\n\r\n");
      paramString = localStringBuilder.toString().getBytes("UTF-8");
      return paramString;
    }
    catch (IOException paramString)
    {
    }
    throw new RuntimeException("Unable to write multipart header", paramString);
  }

  public final void addPart(String paramString, TypedOutput paramTypedOutput)
  {
    if (paramString == null)
      throw new NullPointerException("Part name must not be null.");
    if (paramTypedOutput == null)
      throw new NullPointerException("Part body must not be null.");
    paramString = new MultipartTypedOutput.MimePart(paramString, paramTypedOutput, this.boundary, this.mimeParts.isEmpty());
    this.mimeParts.add(paramString);
    long l = paramString.size();
    if (l == -1L)
      this.length = -1L;
    while (this.length == -1L)
      return;
    this.length = (l + this.length);
  }

  public final String fileName()
  {
    return null;
  }

  public final int getPartCount()
  {
    return this.mimeParts.size();
  }

  final List<byte[]> getParts()
    throws IOException
  {
    ArrayList localArrayList = new ArrayList(this.mimeParts.size());
    Iterator localIterator = this.mimeParts.iterator();
    while (localIterator.hasNext())
    {
      MultipartTypedOutput.MimePart localMimePart = (MultipartTypedOutput.MimePart)localIterator.next();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localMimePart.writeTo(localByteArrayOutputStream);
      localArrayList.add(localByteArrayOutputStream.toByteArray());
    }
    return localArrayList;
  }

  public final long length()
  {
    return this.length;
  }

  public final String mimeType()
  {
    return "multipart/form-data; boundary=" + this.boundary;
  }

  public final void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    Iterator localIterator = this.mimeParts.iterator();
    while (localIterator.hasNext())
      ((MultipartTypedOutput.MimePart)localIterator.next()).writeTo(paramOutputStream);
    paramOutputStream.write(this.footer);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.mime.MultipartTypedOutput
 * JD-Core Version:    0.6.2
 */