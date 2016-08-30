package retrofit.mime;

import java.io.UnsupportedEncodingException;

public class TypedString extends TypedByteArray
{
  public TypedString(String paramString)
  {
    super("text/plain; charset=UTF-8", convertToBytes(paramString));
  }

  private static byte[] convertToBytes(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
    }
    throw new RuntimeException(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.mime.TypedString
 * JD-Core Version:    0.6.2
 */