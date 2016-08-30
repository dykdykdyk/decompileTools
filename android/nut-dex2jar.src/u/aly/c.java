package u.aly;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class c extends fc
{
  private static final Pattern d = Pattern.compile("UTDID\">([^<]+)");
  private Context e;

  public c(Context paramContext)
  {
    super("utdid");
    this.e = paramContext;
  }

  private String c()
  {
    Object localObject1 = d();
    if ((localObject1 == null) || (!((File)localObject1).exists()))
      return null;
    while (true)
    {
      try
      {
        FileInputStream localFileInputStream = new FileInputStream((File)localObject1);
        try
        {
          localObject1 = cs.a(localFileInputStream);
          if (localObject1 != null)
          {
            localObject1 = d.matcher((CharSequence)localObject1);
            if (((Matcher)localObject1).find())
            {
              localObject1 = ((Matcher)localObject1).group(1);
              return localObject1;
            }
          }
        }
        finally
        {
          cs.c(localFileInputStream);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      Object localObject3 = null;
    }
  }

  private File d()
  {
    if (!cr.a(this.e, "android.permission.WRITE_EXTERNAL_STORAGE"));
    while (!Environment.getExternalStorageState().equals("mounted"))
      return null;
    File localFile = Environment.getExternalStorageDirectory();
    try
    {
      localFile = new File(localFile.getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
      return localFile;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final String a()
  {
    try
    {
      String str = (String)Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", new Class[] { Context.class }).invoke(null, new Object[] { this.e });
      return str;
    }
    catch (Exception localException)
    {
    }
    return c();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.c
 * JD-Core Version:    0.6.2
 */