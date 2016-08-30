package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.f.s;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class v extends r
  implements c, e
{
  final Handler a = new w(this);
  final aa b = new aa(new x(this));
  boolean c;
  boolean d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  boolean i;
  int j;
  boolean k;
  s<String> l;

  private static String a(View paramView)
  {
    char c3 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    switch (paramView.getVisibility())
    {
    default:
      localStringBuilder.append('.');
    case 0:
    case 4:
    case 8:
    }
    while (true)
    {
      char c1;
      label118: int m;
      label135: label152: label169: label186: label203: label220: label244: Object localObject;
      if (paramView.isFocusable())
      {
        c1 = 'F';
        localStringBuilder.append(c1);
        if (!paramView.isEnabled())
          break label562;
        c1 = 'E';
        localStringBuilder.append(c1);
        if (!paramView.willNotDraw())
          break label568;
        c1 = '.';
        localStringBuilder.append(c1);
        if (!paramView.isHorizontalScrollBarEnabled())
          break label574;
        c1 = 'H';
        localStringBuilder.append(c1);
        if (!paramView.isVerticalScrollBarEnabled())
          break label580;
        c1 = 'V';
        localStringBuilder.append(c1);
        if (!paramView.isClickable())
          break label586;
        c1 = 'C';
        localStringBuilder.append(c1);
        if (!paramView.isLongClickable())
          break label592;
        c1 = 'L';
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        if (!paramView.isFocused())
          break label598;
        c1 = c3;
        localStringBuilder.append(c1);
        if (!paramView.isSelected())
          break label604;
        c1 = 'S';
        label261: localStringBuilder.append(c1);
        c1 = c2;
        if (paramView.isPressed())
          c1 = 'P';
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        m = paramView.getId();
        if (m != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(m));
          localObject = paramView.getResources();
          if ((m != 0) && (localObject != null))
            switch (0xFF000000 & m)
            {
            default:
            case 2130706432:
            case 16777216:
            }
        }
      }
      try
      {
        paramView = ((Resources)localObject).getResourcePackageName(m);
        while (true)
        {
          String str = ((Resources)localObject).getResourceTypeName(m);
          localObject = ((Resources)localObject).getResourceEntryName(m);
          localStringBuilder.append(" ");
          localStringBuilder.append(paramView);
          localStringBuilder.append(":");
          localStringBuilder.append(str);
          localStringBuilder.append("/");
          localStringBuilder.append((String)localObject);
          label509: localStringBuilder.append("}");
          return localStringBuilder.toString();
          localStringBuilder.append('V');
          break;
          localStringBuilder.append('I');
          break;
          localStringBuilder.append('G');
          break;
          c1 = '.';
          break label118;
          label562: c1 = '.';
          break label135;
          label568: c1 = 'D';
          break label152;
          label574: c1 = '.';
          break label169;
          label580: c1 = '.';
          break label186;
          label586: c1 = '.';
          break label203;
          label592: c1 = '.';
          break label220;
          label598: c1 = '.';
          break label244;
          label604: c1 = '.';
          break label261;
          paramView = "app";
          continue;
          paramView = "android";
        }
      }
      catch (Resources.NotFoundException paramView)
      {
        break label509;
      }
    }
  }

  private void a(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null)
      paramPrintWriter.println("null");
    while (true)
    {
      return;
      paramPrintWriter.println(a(paramView));
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int n = paramView.getChildCount();
        if (n > 0)
        {
          paramString = paramString + "  ";
          int m = 0;
          while (m < n)
          {
            a(paramString, paramPrintWriter, paramView.getChildAt(m));
            m += 1;
          }
        }
      }
    }
  }

  final int a(Fragment paramFragment)
  {
    if (this.l.b() >= 65534)
      throw new IllegalStateException("Too many pending Fragment activity results.");
    while (true)
    {
      s locals = this.l;
      m = this.j;
      if (locals.a)
        locals.a();
      if (android.support.v4.f.c.a(locals.b, locals.c, m) < 0)
        break;
      this.j = ((this.j + 1) % 65534);
    }
    int m = this.j;
    this.l.a(m, paramFragment.mWho);
    this.j = ((this.j + 1) % 65534);
    return m;
  }

  final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.b.a.f.a(paramView, paramString, paramContext, paramAttributeSet);
  }

  public final void a(int paramInt)
  {
    if ((!this.i) && (paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
  }

  final void a(boolean paramBoolean)
  {
    Object localObject;
    if (!this.f)
    {
      this.f = true;
      this.g = paramBoolean;
      this.a.removeMessages(1);
      localObject = this.b;
      paramBoolean = this.g;
      localObject = ((aa)localObject).a;
      ((ab)localObject).h = paramBoolean;
      if ((((ab)localObject).i != null) && (((ab)localObject).k))
      {
        ((ab)localObject).k = false;
        if (!paramBoolean)
          break label90;
        ((ab)localObject).i.d();
      }
    }
    while (true)
    {
      this.b.a.f.b(2);
      return;
      label90: ((ab)localObject).i.c();
    }
  }

  protected final void b()
  {
    this.b.a.f.j();
  }

  public void c()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      invalidateOptionsMenu();
      return;
    }
    this.h = true;
  }

  public final ac d()
  {
    return this.b.a.f;
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int m = Build.VERSION.SDK_INT;
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.c);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.d);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.e);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.f);
    ab localab = this.b.a;
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(localab.k);
    if (localab.i != null)
    {
      paramPrintWriter.print(str);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(localab.i)));
      paramPrintWriter.println(":");
      localab.i.a(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.b.a.f.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    a(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.b.a();
    int m = paramInt1 >> 16;
    if (m != 0)
    {
      m -= 1;
      String str = (String)this.l.a(m);
      this.l.b(m);
      if (str == null)
      {
        Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
        return;
      }
      Fragment localFragment = this.b.a(str);
      if (localFragment == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for who: " + str);
        return;
      }
      localFragment.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onBackPressed()
  {
    if (!this.b.a.f.b())
      b_();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.b.a.f.a(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    Object localObject1 = this.b;
    ((aa)localObject1).a.f.a(((aa)localObject1).a, ((aa)localObject1).a, null);
    super.onCreate(paramBundle);
    localObject1 = (y)getLastNonConfigurationInstance();
    Object localObject2;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject2 = this.b;
      localObject3 = ((y)localObject1).c;
      ((aa)localObject2).a.g = ((android.support.v4.f.r)localObject3);
    }
    if (paramBundle != null)
    {
      localObject2 = paramBundle.getParcelable("android:support:fragments");
      localObject3 = this.b;
      if (localObject1 == null)
        break label204;
      localObject1 = ((y)localObject1).b;
      ((aa)localObject3).a.f.a((Parcelable)localObject2, (List)localObject1);
      if (paramBundle.containsKey("android:support:next_request_index"))
      {
        this.j = paramBundle.getInt("android:support:next_request_index");
        localObject1 = paramBundle.getIntArray("android:support:request_indicies");
        paramBundle = paramBundle.getStringArray("android:support:request_fragment_who");
        if ((localObject1 != null) && (paramBundle != null) && (localObject1.length == paramBundle.length))
          break label209;
        Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
      }
    }
    while (true)
    {
      if (this.l == null)
      {
        this.l = new s();
        this.j = 0;
      }
      this.b.a.f.g();
      return;
      label204: localObject1 = null;
      break;
      label209: this.l = new s(localObject1.length);
      int m = 0;
      while (m < localObject1.length)
      {
        this.l.a(localObject1[m], paramBundle[m]);
        m += 1;
      }
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      aa localaa = this.b;
      MenuInflater localMenuInflater = getMenuInflater();
      boolean bool2 = localaa.a.f.a(paramMenu, localMenuInflater);
      if (Build.VERSION.SDK_INT >= 11)
        return bool1 | bool2;
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public void onDestroy()
  {
    super.onDestroy();
    a(false);
    this.b.a.f.l();
    ab localab = this.b.a;
    if (localab.i != null)
      localab.i.g();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    this.b.a.f.m();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 0:
      return this.b.a.f.a(paramMenuItem);
    case 6:
    }
    return this.b.a.f.b(paramMenuItem);
  }

  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.b.a();
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    while (true)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.b.a.f.b(paramMenu);
    }
  }

  public void onPause()
  {
    super.onPause();
    this.d = false;
    if (this.a.hasMessages(2))
    {
      this.a.removeMessages(2);
      b();
    }
    this.b.a.f.b(4);
  }

  public void onPostResume()
  {
    super.onPostResume();
    this.a.removeMessages(2);
    b();
    this.b.b();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.h)
      {
        this.h = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return super.onPreparePanel(0, paramView, paramMenu) | this.b.a.f.a(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }

  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    int m = paramInt >> 16 & 0xFFFF;
    String str;
    if (m != 0)
    {
      m -= 1;
      str = (String)this.l.a(m);
      this.l.b(m);
      if (str == null)
        Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
    }
    else
    {
      return;
    }
    Fragment localFragment = this.b.a(str);
    if (localFragment == null)
    {
      Log.w("FragmentActivity", "Activity result no fragment exists for who: " + str);
      return;
    }
    localFragment.onRequestPermissionsResult(paramInt & 0xFFFF, paramArrayOfString, paramArrayOfInt);
  }

  public void onResume()
  {
    super.onResume();
    this.a.sendEmptyMessage(2);
    this.d = true;
    this.b.b();
  }

  public final Object onRetainNonConfigurationInstance()
  {
    if (this.e)
      a(true);
    ad localad = this.b.a.f;
    Object localObject2;
    if (localad.f != null)
    {
      int m = 0;
      localObject1 = null;
      localObject2 = localObject1;
      if (m < localad.f.size())
      {
        Fragment localFragment = (Fragment)localad.f.get(m);
        localObject3 = localObject1;
        if (localFragment != null)
        {
          localObject3 = localObject1;
          if (localFragment.mRetainInstance)
          {
            localObject2 = localObject1;
            if (localObject1 == null)
              localObject2 = new ArrayList();
            ((ArrayList)localObject2).add(localFragment);
            localFragment.mRetaining = true;
            if (localFragment.mTarget == null)
              break label186;
          }
        }
        label186: for (int n = localFragment.mTarget.mIndex; ; n = -1)
        {
          localFragment.mTargetIndex = n;
          localObject3 = localObject2;
          if (ad.a)
          {
            Log.v("FragmentManager", "retainNonConfig: keeping retained " + localFragment);
            localObject3 = localObject2;
          }
          m += 1;
          localObject1 = localObject3;
          break;
        }
      }
    }
    else
    {
      localObject2 = null;
    }
    Object localObject1 = this.b.a.h();
    if ((localObject2 == null) && (localObject1 == null))
      return null;
    Object localObject3 = new y();
    ((y)localObject3).a = null;
    ((y)localObject3).b = ((List)localObject2);
    ((y)localObject3).c = ((android.support.v4.f.r)localObject1);
    return localObject3;
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Object localObject = this.b.a.f.f();
    if (localObject != null)
      paramBundle.putParcelable("android:support:fragments", (Parcelable)localObject);
    if (this.l.b() > 0)
    {
      paramBundle.putInt("android:support:next_request_index", this.j);
      localObject = new int[this.l.b()];
      String[] arrayOfString = new String[this.l.b()];
      int m = 0;
      while (m < this.l.b())
      {
        localObject[m] = this.l.c(m);
        arrayOfString[m] = ((String)this.l.d(m));
        m += 1;
      }
      paramBundle.putIntArray("android:support:request_indicies", (int[])localObject);
      paramBundle.putStringArray("android:support:request_fragment_who", arrayOfString);
    }
  }

  public void onStart()
  {
    super.onStart();
    this.e = false;
    this.f = false;
    this.a.removeMessages(1);
    if (!this.c)
    {
      this.c = true;
      this.b.a.f.h();
    }
    this.b.a();
    this.b.b();
    Object localObject = this.b.a;
    if (!((ab)localObject).k)
    {
      ((ab)localObject).k = true;
      if (((ab)localObject).i == null)
        break label183;
      ((ab)localObject).i.b();
    }
    ab localab;
    int i1;
    while (true)
    {
      ((ab)localObject).j = true;
      this.b.a.f.i();
      localab = this.b.a;
      if (localab.g == null)
        return;
      i1 = localab.g.size();
      localObject = new ax[i1];
      m = i1 - 1;
      while (m >= 0)
      {
        localObject[m] = ((ax)localab.g.c(m));
        m -= 1;
      }
      label183: if (!((ab)localObject).j)
      {
        ((ab)localObject).i = ((ab)localObject).a("(root)", ((ab)localObject).k, false);
        if ((((ab)localObject).i != null) && (!((ab)localObject).i.e))
          ((ab)localObject).i.b();
      }
    }
    int m = 0;
    while (m < i1)
    {
      localab = localObject[m];
      if (localab.f)
      {
        if (ax.a)
          Log.v("LoaderManager", "Finished Retaining in " + localab);
        localab.f = false;
        int n = localab.b.b() - 1;
        while (n >= 0)
        {
          ay localay = (ay)localab.b.d(n);
          if (localay.i)
          {
            if (ax.a)
              Log.v("LoaderManager", "  Finished Retaining: " + localay);
            localay.i = false;
            if ((localay.h != localay.j) && (!localay.h))
              localay.b();
          }
          if ((localay.h) && (localay.e) && (!localay.k))
            localay.b(localay.d, localay.g);
          n -= 1;
        }
      }
      localab.f();
      m += 1;
    }
  }

  public void onStateNotSaved()
  {
    this.b.a();
  }

  public void onStop()
  {
    super.onStop();
    this.e = true;
    this.a.sendEmptyMessage(1);
    this.b.a.f.k();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((!this.k) && (paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.v
 * JD-Core Version:    0.6.2
 */