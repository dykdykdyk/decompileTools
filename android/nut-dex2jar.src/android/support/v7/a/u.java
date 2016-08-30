package android.support.v7.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

public abstract class u
{
  static int a = -1;
  private static boolean b = false;

  public static u a(Activity paramActivity, t paramt)
  {
    return a(paramActivity, paramActivity.getWindow(), paramt);
  }

  public static u a(Dialog paramDialog, t paramt)
  {
    return a(paramDialog.getContext(), paramDialog.getWindow(), paramt);
  }

  private static u a(Context paramContext, Window paramWindow, t paramt)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
      return new aa(paramContext, paramWindow, paramt);
    if (i >= 14)
      return new y(paramContext, paramWindow, paramt);
    if (i >= 11)
      return new x(paramContext, paramWindow, paramt);
    return new ac(paramContext, paramWindow, paramt);
  }

  public static boolean j()
  {
    return b;
  }

  public abstract a a();

  public abstract View a(int paramInt);

  public abstract void a(Configuration paramConfiguration);

  public abstract void a(Bundle paramBundle);

  public abstract void a(Toolbar paramToolbar);

  public abstract void a(View paramView);

  public abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  public abstract void a(CharSequence paramCharSequence);

  public abstract MenuInflater b();

  public abstract void b(int paramInt);

  public abstract void b(Bundle paramBundle);

  public abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  public abstract void c();

  public abstract boolean c(int paramInt);

  public abstract void d();

  public abstract void e();

  public abstract void f();

  public abstract void g();

  public abstract void h();

  public abstract boolean i();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.u
 * JD-Core Version:    0.6.2
 */