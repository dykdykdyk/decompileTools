package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.io.PrintWriter;

final class x extends ab<v>
{
  public x(v paramv)
  {
    super(paramv);
  }

  public final View a(int paramInt)
  {
    return this.a.findViewById(paramInt);
  }

  public final void a(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    v localv = this.a;
    localv.k = true;
    if (paramInt == -1);
    try
    {
      a.a(localv, paramIntent, -1, paramBundle);
      return;
      if ((0xFFFF0000 & paramInt) != 0)
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    finally
    {
      localv.k = false;
    }
    a.a(localv, paramIntent, (localv.a(paramFragment) + 1 << 16) + (0xFFFF & paramInt), paramBundle);
    localv.k = false;
  }

  public final void a(Fragment paramFragment, String[] paramArrayOfString, int paramInt)
  {
    v.a(this.a, paramFragment, paramArrayOfString, paramInt);
  }

  public final void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    this.a.dump(paramString, null, paramPrintWriter, paramArrayOfString);
  }

  public final boolean a()
  {
    Window localWindow = this.a.getWindow();
    return (localWindow != null) && (localWindow.peekDecorView() != null);
  }

  public final boolean a(String paramString)
  {
    v localv = this.a;
    if (Build.VERSION.SDK_INT >= 23)
      return localv.shouldShowRequestPermissionRationale(paramString);
    return false;
  }

  public final boolean b()
  {
    return !this.a.isFinishing();
  }

  public final LayoutInflater c()
  {
    return this.a.getLayoutInflater().cloneInContext(this.a);
  }

  public final void d()
  {
    this.a.c();
  }

  public final boolean e()
  {
    return this.a.getWindow() != null;
  }

  public final int f()
  {
    Window localWindow = this.a.getWindow();
    if (localWindow == null)
      return 0;
    return localWindow.getAttributes().windowAnimations;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.x
 * JD-Core Version:    0.6.2
 */