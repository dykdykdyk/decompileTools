package u.aly;

import android.text.TextUtils;
import java.util.Map;

public final class fk
{
  int a = -1;
  int b = -1;
  int c = -1;
  String d = null;
  int e = -1;
  int f = -1;
  String g = null;
  private int h = -1;
  private int i = -1;
  private int j = -1;
  private String k = null;
  private String l = null;
  private String m = null;

  private static int a(bl parambl, String paramString)
  {
    if ((parambl == null) || (!parambl.a()))
      return -1;
    parambl = (bs)parambl.a.get(paramString);
    if ((parambl == null) || (TextUtils.isEmpty(parambl.a)))
      return -1;
    try
    {
      int n = Integer.parseInt(parambl.a.trim());
      return n;
    }
    catch (Exception parambl)
    {
    }
    return -1;
  }

  private static String b(bl parambl, String paramString)
  {
    if ((parambl == null) || (!parambl.a()))
      return null;
    parambl = (bs)parambl.a.get(paramString);
    if ((parambl == null) || (TextUtils.isEmpty(parambl.a)))
      return null;
    return parambl.a;
  }

  public final int a()
  {
    if (this.h == -1);
    while ((this.h > 3) || (this.h < 0))
      return 0;
    return this.h;
  }

  public final int a(int paramInt)
  {
    if ((this.c == -1) || (this.c < 90) || (this.c > 86400))
      return paramInt;
    return this.c * 1000;
  }

  public final void a(bl parambl)
  {
    if (parambl == null)
      return;
    this.h = a(parambl, "defcon");
    this.a = a(parambl, "latent");
    this.b = a(parambl, "codex");
    this.i = a(parambl, "report_policy");
    this.j = a(parambl, "report_interval");
    this.k = b(parambl, "client_test");
    this.c = a(parambl, "test_report_interval");
    this.d = b(parambl, "umid");
    this.e = a(parambl, "integrated_test");
    this.f = a(parambl, "latent_hours");
    this.g = b(parambl, "country");
    this.l = b(parambl, "domain_p");
    this.m = b(parambl, "domain_s");
  }

  public final int[] b()
  {
    if (this.i != -1)
      switch (this.i)
      {
      case 7:
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
      }
    for (int n = 0; n == 0; n = 1)
      return new int[] { -1, -1 };
    if ((this.j == -1) || (this.j < 90) || (this.j > 86400))
      this.j = 90;
    return new int[] { this.i, this.j * 1000 };
  }

  public final String c()
  {
    if ((this.k == null) || (!ap.a(this.k)))
      return null;
    return this.k;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fk
 * JD-Core Version:    0.6.2
 */