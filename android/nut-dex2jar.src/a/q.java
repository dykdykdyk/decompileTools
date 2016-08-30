package a;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.logging.Logger;

public final class q
{
  private static final Logger a = Logger.getLogger(q.class.getName());

  public static aa a(File paramFile)
    throws FileNotFoundException
  {
    if (paramFile == null)
      throw new IllegalArgumentException("file == null");
    return a(new FileInputStream(paramFile), new ab());
  }

  private static aa a(InputStream paramInputStream, ab paramab)
  {
    if (paramInputStream == null)
      throw new IllegalArgumentException("in == null");
    if (paramab == null)
      throw new IllegalArgumentException("timeout == null");
    return new s(paramab, paramInputStream);
  }

  public static i a(z paramz)
  {
    if (paramz == null)
      throw new IllegalArgumentException("sink == null");
    return new u(paramz);
  }

  public static j a(aa paramaa)
  {
    if (paramaa == null)
      throw new IllegalArgumentException("source == null");
    return new v(paramaa);
  }

  public static z a(Socket paramSocket)
    throws IOException
  {
    if (paramSocket == null)
      throw new IllegalArgumentException("socket == null");
    a locala = c(paramSocket);
    paramSocket = paramSocket.getOutputStream();
    if (paramSocket == null)
      throw new IllegalArgumentException("out == null");
    return new b(locala, new r(locala, paramSocket));
  }

  public static aa b(Socket paramSocket)
    throws IOException
  {
    if (paramSocket == null)
      throw new IllegalArgumentException("socket == null");
    a locala = c(paramSocket);
    return new c(locala, a(paramSocket.getInputStream(), locala));
  }

  private static a c(Socket paramSocket)
  {
    return new t(paramSocket);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.q
 * JD-Core Version:    0.6.2
 */