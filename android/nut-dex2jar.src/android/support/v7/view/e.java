package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.support.v7.b.k;
import android.view.LayoutInflater;

public final class e extends ContextWrapper
{
  public int a;
  private Resources.Theme b;
  private LayoutInflater c;

  public e(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.a = paramInt;
  }

  private void a()
  {
    if (this.b == null);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        this.b = getResources().newTheme();
        Resources.Theme localTheme = getBaseContext().getTheme();
        if (localTheme != null)
          this.b.setTo(localTheme);
      }
      this.b.applyStyle(this.a, true);
      return;
    }
  }

  public final Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
    {
      if (this.c == null)
        this.c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
      return this.c;
    }
    return getBaseContext().getSystemService(paramString);
  }

  public final Resources.Theme getTheme()
  {
    if (this.b != null)
      return this.b;
    if (this.a == 0)
      this.a = k.Theme_AppCompat_Light;
    a();
    return this.b;
  }

  public final void setTheme(int paramInt)
  {
    if (this.a != paramInt)
    {
      this.a = paramInt;
      a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.e
 * JD-Core Version:    0.6.2
 */