package a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

final class t extends a
{
  t(Socket paramSocket)
  {
  }

  protected final IOException a(IOException paramIOException)
  {
    SocketTimeoutException localSocketTimeoutException = new SocketTimeoutException("timeout");
    if (paramIOException != null)
      localSocketTimeoutException.initCause(paramIOException);
    return localSocketTimeoutException;
  }

  protected final void a()
  {
    try
    {
      this.a.close();
      return;
    }
    catch (Exception localException)
    {
      q.a().log(Level.WARNING, "Failed to close timed out socket " + this.a, localException);
      return;
    }
    catch (AssertionError localAssertionError)
    {
      if ((localAssertionError.getCause() != null) && (localAssertionError.getMessage() != null) && (localAssertionError.getMessage().contains("getsockname failed")))
      {
        q.a().log(Level.WARNING, "Failed to close timed out socket " + this.a, localAssertionError);
        return;
      }
      throw localAssertionError;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.t
 * JD-Core Version:    0.6.2
 */