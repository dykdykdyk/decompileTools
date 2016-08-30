package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.d.a.a;
import android.support.v4.view.an;
import android.support.v4.view.n;
import android.support.v7.b.c;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class i
  implements a
{
  private static final int[] l = { 1, 4, 5, 3, 2, 0 };
  final Context a;
  public j b;
  ArrayList<m> c;
  public ArrayList<m> d;
  public int e = 0;
  CharSequence f;
  Drawable g;
  View h;
  boolean i = false;
  m j;
  public boolean k;
  private final Resources m;
  private boolean n;
  private boolean o;
  private ArrayList<m> p;
  private boolean q;
  private ArrayList<m> r;
  private boolean s;
  private ContextMenu.ContextMenuInfo t;
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private ArrayList<m> x = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<x>> y = new CopyOnWriteArrayList();

  public i(Context paramContext)
  {
    this.a = paramContext;
    this.m = paramContext.getResources();
    this.c = new ArrayList();
    this.p = new ArrayList();
    this.q = true;
    this.d = new ArrayList();
    this.r = new ArrayList();
    this.s = true;
    if ((this.m.getConfiguration().keyboard != 1) && (this.m.getBoolean(c.abc_config_showMenuShortcutsWhenKeyboardPresent)));
    while (true)
    {
      this.o = bool;
      return;
      bool = false;
    }
  }

  private static int a(ArrayList<m> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size() - 1;
    while (i1 >= 0)
    {
      if (((m)paramArrayList.get(i1)).a <= paramInt)
        return i1 + 1;
      i1 -= 1;
    }
    return 0;
  }

  private m a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.x;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int i4 = localArrayList.size();
    if (i4 == 1)
      return (m)localArrayList.get(0);
    boolean bool = b();
    int i1 = 0;
    label84: if (i1 < i4)
    {
      m localm = (m)localArrayList.get(i1);
      if (bool);
      for (int i2 = localm.getAlphabeticShortcut(); ; i2 = localm.getNumericShortcut())
      {
        if (i2 == localKeyData.meta[0])
        {
          paramKeyEvent = localm;
          if ((i3 & 0x2) == 0)
            break;
        }
        if (i2 == localKeyData.meta[2])
        {
          paramKeyEvent = localm;
          if ((i3 & 0x2) != 0)
            break;
        }
        if ((bool) && (i2 == 8))
        {
          paramKeyEvent = localm;
          if (paramInt == 67)
            break;
        }
        i1 += 1;
        break label84;
      }
    }
    return null;
  }

  private MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = (0xFFFF0000 & paramInt3) >> 16;
    if ((i1 < 0) || (i1 >= l.length))
      throw new IllegalArgumentException("order does not contain a valid category.");
    i1 = l[i1] << 16 | 0xFFFF & paramInt3;
    paramCharSequence = new m(this, paramInt1, paramInt2, paramInt3, i1, paramCharSequence, this.e);
    if (this.t != null)
      paramCharSequence.e = this.t;
    this.c.add(a(this.c, i1), paramCharSequence);
    b(true);
    return paramCharSequence;
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.c.size()));
    do
    {
      return;
      this.c.remove(paramInt);
    }
    while (!paramBoolean);
    b(true);
  }

  private void a(List<m> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = b();
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67))
      return;
    int i4 = this.c.size();
    int i1 = 0;
    label49: m localm;
    if (i1 < i4)
    {
      localm = (m)this.c.get(i1);
      if (localm.hasSubMenu())
        ((i)localm.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      if (!bool)
        break label184;
    }
    label184: for (int i2 = localm.getAlphabeticShortcut(); ; i2 = localm.getNumericShortcut())
    {
      if (((i3 & 0x5) == 0) && (i2 != 0) && ((i2 == localKeyData.meta[0]) || (i2 == localKeyData.meta[2]) || ((bool) && (i2 == 8) && (paramInt == 67))) && (localm.isEnabled()))
        paramList.add(localm);
      i1 += 1;
      break label49;
      break;
    }
  }

  protected final i a(Drawable paramDrawable)
  {
    a(null, paramDrawable, null);
    return this;
  }

  protected final i a(CharSequence paramCharSequence)
  {
    a(paramCharSequence, null, null);
    return this;
  }

  protected String a()
  {
    return "android:menu:actionviewstates";
  }

  public final void a(Bundle paramBundle)
  {
    int i2 = size();
    int i1 = 0;
    Object localObject3;
    for (Object localObject1 = null; i1 < i2; localObject1 = localObject3)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = an.a(localMenuItem);
      localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null)
            localObject2 = new SparseArray();
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (an.c(localMenuItem))
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu())
        ((ad)localMenuItem.getSubMenu()).a(paramBundle);
      i1 += 1;
    }
    if (localObject1 != null)
      paramBundle.putSparseParcelableArray(a(), localObject1);
  }

  public void a(j paramj)
  {
    this.b = paramj;
  }

  public final void a(x paramx)
  {
    a(paramx, this.a);
  }

  public final void a(x paramx, Context paramContext)
  {
    this.y.add(new WeakReference(paramx));
    paramx.a(paramContext, this);
    this.s = true;
  }

  final void a(CharSequence paramCharSequence, Drawable paramDrawable, View paramView)
  {
    if (paramView != null)
    {
      this.h = paramView;
      this.f = null;
      this.g = null;
    }
    while (true)
    {
      b(false);
      return;
      if (paramCharSequence != null)
        this.f = paramCharSequence;
      if (paramDrawable != null)
        this.g = paramDrawable;
      this.h = null;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.w)
      return;
    this.w = true;
    Iterator localIterator = this.y.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if (localx == null)
        this.y.remove(localWeakReference);
      else
        localx.a(this, paramBoolean);
    }
    this.w = false;
  }

  boolean a(i parami, MenuItem paramMenuItem)
  {
    return (this.b != null) && (this.b.a(parami, paramMenuItem));
  }

  public boolean a(m paramm)
  {
    boolean bool2 = false;
    if (this.y.isEmpty())
      return bool2;
    d();
    Iterator localIterator = this.y.iterator();
    boolean bool1 = false;
    while (true)
      label29: if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        x localx = (x)localWeakReference.get();
        if (localx == null)
        {
          this.y.remove(localWeakReference);
        }
        else
        {
          bool1 = localx.b(paramm);
          if (!bool1)
            break;
        }
      }
    while (true)
    {
      e();
      bool2 = bool1;
      if (!bool1)
        break;
      this.j = paramm;
      return bool1;
      break label29;
    }
  }

  public final boolean a(MenuItem paramMenuItem, x paramx, int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    paramMenuItem = (m)paramMenuItem;
    if ((paramMenuItem == null) || (!paramMenuItem.isEnabled()))
      bool1 = false;
    boolean bool3;
    Object localObject;
    label95: 
    do
    {
      return bool1;
      bool3 = paramMenuItem.b();
      localObject = paramMenuItem.d;
      if ((localObject != null) && (((n)localObject).e()));
      for (int i1 = 1; ; i1 = 0)
      {
        if (!paramMenuItem.i())
          break label95;
        bool2 = paramMenuItem.expandActionView() | bool3;
        bool1 = bool2;
        if (!bool2)
          break;
        a(true);
        return bool2;
      }
      if ((!paramMenuItem.hasSubMenu()) && (i1 == 0))
        break label283;
      a(false);
      if (!paramMenuItem.hasSubMenu())
        paramMenuItem.a(new ad(this.a, this, paramMenuItem));
      paramMenuItem = (ad)paramMenuItem.getSubMenu();
      if (i1 != 0)
        ((n)localObject).a(paramMenuItem);
      if (!this.y.isEmpty())
        break;
      bool2 = bool3 | bool1;
      bool1 = bool2;
    }
    while (bool2);
    a(true);
    return bool2;
    bool1 = bool2;
    if (paramx != null)
      bool1 = paramx.a(paramMenuItem);
    paramx = this.y.iterator();
    label214: 
    while (paramx.hasNext())
    {
      localObject = (WeakReference)paramx.next();
      x localx = (x)((WeakReference)localObject).get();
      if (localx == null)
      {
        this.y.remove(localObject);
      }
      else
      {
        if (bool1)
          break label297;
        bool1 = localx.a(paramMenuItem);
      }
    }
    label283: label297: 
    while (true)
    {
      break label214;
      break;
      if ((paramInt & 0x1) == 0)
        a(true);
      return bool3;
    }
  }

  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, this.m.getString(paramInt));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, this.m.getString(paramInt4));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }

  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }

  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.a.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    label52: ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i1 = localList.size();
      if ((paramInt4 & 0x1) == 0)
        removeGroup(paramInt1);
      paramInt4 = 0;
      if (paramInt4 >= i1)
        break label214;
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (localResolveInfo.specificIndex >= 0)
        break label201;
    }
    label201: for (paramComponentName = paramIntent; ; paramComponentName = paramArrayOfIntent[localResolveInfo.specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(localResolveInfo.activityInfo.applicationInfo.packageName, localResolveInfo.activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (localResolveInfo.specificIndex >= 0))
        paramArrayOfMenuItem[localResolveInfo.specificIndex] = paramComponentName;
      paramInt4 += 1;
      break label52;
      i1 = 0;
      break;
    }
    label214: return i1;
  }

  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.m.getString(paramInt));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.m.getString(paramInt4));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (m)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    ad localad = new ad(this.a, this, paramCharSequence);
    paramCharSequence.a(localad);
    return localad;
  }

  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }

  public final void b(Bundle paramBundle)
  {
    if (paramBundle == null);
    do
    {
      int i1;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(a());
        int i2 = size();
        i1 = 0;
        while (i1 < i2)
        {
          MenuItem localMenuItem = getItem(i1);
          View localView = an.a(localMenuItem);
          if ((localView != null) && (localView.getId() != -1))
            localView.restoreHierarchyState(localSparseArray);
          if (localMenuItem.hasSubMenu())
            ((ad)localMenuItem.getSubMenu()).b(paramBundle);
          i1 += 1;
        }
        i1 = paramBundle.getInt("android:menu:expandedactionview");
      }
      while (i1 <= 0);
      paramBundle = findItem(i1);
    }
    while (paramBundle == null);
    an.b(paramBundle);
  }

  public final void b(x paramx)
  {
    Iterator localIterator = this.y.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      x localx = (x)localWeakReference.get();
      if ((localx == null) || (localx == paramx))
        this.y.remove(localWeakReference);
    }
  }

  public final void b(boolean paramBoolean)
  {
    if (!this.u)
    {
      if (paramBoolean)
      {
        this.q = true;
        this.s = true;
      }
      if (!this.y.isEmpty())
      {
        d();
        Iterator localIterator = this.y.iterator();
        while (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          x localx = (x)localWeakReference.get();
          if (localx == null)
            this.y.remove(localWeakReference);
          else
            localx.b(paramBoolean);
        }
        e();
      }
      return;
    }
    this.v = true;
  }

  boolean b()
  {
    return this.n;
  }

  public boolean b(m paramm)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!this.y.isEmpty())
    {
      if (this.j != paramm)
        bool2 = bool1;
    }
    else
      return bool2;
    d();
    Iterator localIterator = this.y.iterator();
    bool1 = false;
    while (true)
      label41: if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        x localx = (x)localWeakReference.get();
        if (localx == null)
        {
          this.y.remove(localWeakReference);
        }
        else
        {
          bool1 = localx.c(paramm);
          if (!bool1)
            break;
        }
      }
    while (true)
    {
      e();
      bool2 = bool1;
      if (!bool1)
        break;
      this.j = null;
      return bool1;
      break label41;
    }
  }

  public boolean c()
  {
    return this.o;
  }

  public void clear()
  {
    if (this.j != null)
      b(this.j);
    this.c.clear();
    b(true);
  }

  public void clearHeader()
  {
    this.g = null;
    this.f = null;
    this.h = null;
    b(false);
  }

  public void close()
  {
    a(true);
  }

  public final void d()
  {
    if (!this.u)
    {
      this.u = true;
      this.v = false;
    }
  }

  public final void e()
  {
    this.u = false;
    if (this.v)
    {
      this.v = false;
      b(true);
    }
  }

  final void f()
  {
    this.q = true;
    b(true);
  }

  public MenuItem findItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (m)this.c.get(i1);
      if (((m)localObject).getItemId() == paramInt);
      MenuItem localMenuItem;
      do
      {
        return localObject;
        if (!((m)localObject).hasSubMenu())
          break;
        localMenuItem = ((m)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      }
      while (localMenuItem != null);
      i1 += 1;
    }
    return null;
  }

  final void g()
  {
    this.s = true;
    b(true);
  }

  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.c.get(paramInt);
  }

  public final ArrayList<m> h()
  {
    if (!this.q)
      return this.p;
    this.p.clear();
    int i2 = this.c.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m localm = (m)this.c.get(i1);
      if (localm.isVisible())
        this.p.add(localm);
      i1 += 1;
    }
    this.q = false;
    this.s = true;
    return this.p;
  }

  public boolean hasVisibleItems()
  {
    if (this.k)
      return true;
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((m)this.c.get(i1)).isVisible())
        return true;
      i1 += 1;
    }
    return false;
  }

  public final void i()
  {
    ArrayList localArrayList = h();
    if (!this.s)
      return;
    Object localObject = this.y.iterator();
    int i1 = 0;
    while (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      x localx = (x)localWeakReference.get();
      if (localx == null)
        this.y.remove(localWeakReference);
      else
        i1 = localx.a() | i1;
    }
    if (i1 != 0)
    {
      this.d.clear();
      this.r.clear();
      int i3 = localArrayList.size();
      i1 = 0;
      if (i1 < i3)
      {
        localObject = (m)localArrayList.get(i1);
        if (((m)localObject).f())
          this.d.add(localObject);
        while (true)
        {
          int i2;
          i1 += 1;
          break;
          this.r.add(localObject);
        }
      }
    }
    else
    {
      this.d.clear();
      this.r.clear();
      this.r.addAll(h());
    }
    this.s = false;
  }

  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }

  public final ArrayList<m> j()
  {
    i();
    return this.r;
  }

  public i k()
  {
    return this;
  }

  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), null, paramInt2);
  }

  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null)
      bool = a(paramKeyEvent, null, paramInt2);
    if ((paramInt2 & 0x2) != 0)
      a(true);
    return bool;
  }

  public void removeGroup(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    if (i1 < i2)
      if (((m)this.c.get(i1)).getGroupId() != paramInt);
    while (true)
      label30: if (i1 >= 0)
      {
        int i3 = this.c.size();
        i2 = 0;
        while (true)
          if ((i2 < i3 - i1) && (((m)this.c.get(i1)).getGroupId() == paramInt))
          {
            a(i1, false);
            i2 += 1;
            continue;
            i1 += 1;
            break;
            i1 = -1;
            break label30;
          }
        b(true);
      }
  }

  public void removeItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    if (i1 < i2)
      if (((m)this.c.get(i1)).getItemId() != paramInt);
    while (true)
    {
      a(i1, true);
      return;
      i1 += 1;
      break;
      i1 = -1;
    }
  }

  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = this.c.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m localm = (m)this.c.get(i1);
      if (localm.getGroupId() == paramInt)
      {
        localm.a(paramBoolean2);
        localm.setCheckable(paramBoolean1);
      }
      i1 += 1;
    }
  }

  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i2 = this.c.size();
    int i1 = 0;
    while (i1 < i2)
    {
      m localm = (m)this.c.get(i1);
      if (localm.getGroupId() == paramInt)
        localm.setEnabled(paramBoolean);
      i1 += 1;
    }
  }

  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i3 = this.c.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      m localm = (m)this.c.get(i2);
      if ((localm.getGroupId() != paramInt) || (!localm.b(paramBoolean)))
        break label74;
      i1 = 1;
    }
    label74: 
    while (true)
    {
      i2 += 1;
      break;
      if (i1 != 0)
        b(true);
      return;
    }
  }

  public void setQwertyMode(boolean paramBoolean)
  {
    this.n = paramBoolean;
    b(false);
  }

  public int size()
  {
    return this.c.size();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.i
 * JD-Core Version:    0.6.2
 */