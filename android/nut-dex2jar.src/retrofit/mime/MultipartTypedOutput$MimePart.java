package retrofit.mime;

import java.io.IOException;
import java.io.OutputStream;

final class MultipartTypedOutput$MimePart
{
  private final TypedOutput body;
  private final String boundary;
  private boolean isBuilt;
  private final boolean isFirst;
  private final String name;
  private byte[] partBoundary;
  private byte[] partHeader;

  public MultipartTypedOutput$MimePart(String paramString1, TypedOutput paramTypedOutput, String paramString2, boolean paramBoolean)
  {
    this.name = paramString1;
    this.body = paramTypedOutput;
    this.isFirst = paramBoolean;
    this.boundary = paramString2;
  }

  private void build()
  {
    if (this.isBuilt)
      return;
    this.partBoundary = MultipartTypedOutput.access$000(this.boundary, this.isFirst, false);
    this.partHeader = MultipartTypedOutput.access$100(this.name, this.body);
    this.isBuilt = true;
  }

  public final long size()
  {
    long l = -1L;
    build();
    if (this.body.length() > -1L)
      l = this.body.length() + this.partBoundary.length + this.partHeader.length;
    return l;
  }

  public final void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    build();
    paramOutputStream.write(this.partBoundary);
    paramOutputStream.write(this.partHeader);
    this.body.writeTo(paramOutputStream);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.mime.MultipartTypedOutput.MimePart
 * JD-Core Version:    0.6.2
 */