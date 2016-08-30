package android.support.v4.f;

import android.util.Log;
import java.io.Writer;

public final class e extends Writer
{
  private final String a;
  private StringBuilder b = new StringBuilder(128);

  public e(String paramString)
  {
    this.a = paramString;
  }

  private void a()
  {
    if (this.b.length() > 0)
    {
      Log.d(this.a, this.b.toString());
      this.b.delete(0, this.b.length());
    }
  }

  public final void close()
  {
    a();
  }

  public final void flush()
  {
    a();
  }

  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n')
        a();
      while (true)
      {
        i += 1;
        break;
        this.b.append(c);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.e
 * JD-Core Version:    0.6.2
 */