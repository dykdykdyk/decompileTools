package android.support.v4.app;

import android.os.Build.VERSION;
import android.support.v4.f.a;
import android.support.v4.f.e;
import android.support.v4.f.h;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseArray<Landroid.support.v4.app.Fragment;>;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

final class i extends an
  implements Runnable
{
  static final boolean a;
  final ad b;
  m c;
  m d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  int k;
  boolean l;
  boolean m = true;
  String n;
  boolean o;
  int p = -1;
  int q;
  CharSequence r;
  int s;
  CharSequence t;
  ArrayList<String> u;
  ArrayList<String> v;

  static
  {
    if (Build.VERSION.SDK_INT >= 21);
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public i(ad paramad)
  {
    this.b = paramad;
  }

  private int a(boolean paramBoolean)
  {
    if (this.o)
      throw new IllegalStateException("commit already called");
    if (ad.a)
    {
      Log.v("FragmentManager", "Commit: " + this);
      a("  ", new PrintWriter(new e("FragmentManager")));
    }
    this.o = true;
    if (this.l);
    for (this.p = this.b.a(this); ; this.p = -1)
    {
      this.b.a(this, paramBoolean);
      return this.p;
    }
  }

  private n a(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2, boolean paramBoolean)
  {
    int i5 = 0;
    n localn = new n(this);
    localn.d = new View(this.b.o.c);
    int i2 = 0;
    int i1 = 0;
    int i3 = i5;
    int i4 = i1;
    if (i2 < paramSparseArray1.size())
    {
      if (!a(paramSparseArray1.keyAt(i2), localn, paramBoolean, paramSparseArray1, paramSparseArray2))
        break label164;
      i1 = 1;
    }
    label164: 
    while (true)
    {
      i2 += 1;
      break;
      while (i3 < paramSparseArray2.size())
      {
        i2 = paramSparseArray2.keyAt(i3);
        i1 = i4;
        if (paramSparseArray1.get(i2) == null)
        {
          i1 = i4;
          if (a(i2, localn, paramBoolean, paramSparseArray1, paramSparseArray2))
            i1 = 1;
        }
        i3 += 1;
        i4 = i1;
      }
      paramSparseArray1 = localn;
      if (i4 == 0)
        paramSparseArray1 = null;
      return paramSparseArray1;
    }
  }

  private a<String, View> a(n paramn, Fragment paramFragment, boolean paramBoolean)
  {
    a locala2 = new a();
    a locala1 = locala2;
    if (this.u != null)
    {
      ao.a(locala2, paramFragment.getView());
      if (!paramBoolean)
        break label74;
      h.a(locala2, this.v);
    }
    label74: for (locala1 = locala2; paramBoolean; locala1 = a(this.u, this.v, locala2))
    {
      if (paramFragment.mEnterTransitionCallback != null)
        paramFragment = paramFragment.mEnterTransitionCallback;
      a(paramn, locala1, false);
      return locala1;
    }
    if (paramFragment.mExitTransitionCallback != null)
      paramFragment = paramFragment.mExitTransitionCallback;
    b(paramn, locala1, false);
    return locala1;
  }

  private static a<String, View> a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, a<String, View> parama)
  {
    if (parama.isEmpty())
      return parama;
    a locala = new a();
    int i2 = paramArrayList1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = (View)parama.get(paramArrayList1.get(i1));
      if (localView != null)
        locala.put(paramArrayList2.get(i1), localView);
      i1 += 1;
    }
    return locala;
  }

  private static Object a(Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList, a<String, View> parama, View paramView)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      paramFragment = paramFragment.getView();
      localObject = paramObject;
      if (paramObject != null)
      {
        ao.a(paramArrayList, paramFragment);
        if (parama != null)
          paramArrayList.removeAll(parama.values());
        if (!paramArrayList.isEmpty())
          break label52;
        localObject = null;
      }
    }
    return localObject;
    label52: paramArrayList.add(paramView);
    ao.b((Transition)paramObject, paramArrayList);
    return paramObject;
  }

  private void a(n paramn, int paramInt, Object paramObject)
  {
    if (this.b.g != null)
    {
      int i1 = 0;
      if (i1 < this.b.g.size())
      {
        Fragment localFragment = (Fragment)this.b.g.get(i1);
        if ((localFragment.mView != null) && (localFragment.mContainer != null) && (localFragment.mContainerId == paramInt))
        {
          if (!localFragment.mHidden)
            break label125;
          if (!paramn.b.contains(localFragment.mView))
          {
            ao.a(paramObject, localFragment.mView, true);
            paramn.b.add(localFragment.mView);
          }
        }
        while (true)
        {
          i1 += 1;
          break;
          label125: ao.a(paramObject, localFragment.mView, false);
          paramn.b.remove(localFragment.mView);
        }
      }
    }
  }

  private void a(n paramn, a<String, View> parama, boolean paramBoolean)
  {
    int i1;
    int i2;
    label13: String str;
    Object localObject;
    if (this.v == null)
    {
      i1 = 0;
      i2 = 0;
      if (i2 >= i1)
        return;
      str = (String)this.u.get(i2);
      localObject = (View)parama.get((String)this.v.get(i2));
      if (localObject != null)
      {
        localObject = ((View)localObject).getTransitionName();
        if (!paramBoolean)
          break label103;
        a(paramn.a, str, (String)localObject);
      }
    }
    while (true)
    {
      i2 += 1;
      break label13;
      i1 = this.v.size();
      break;
      label103: a(paramn.a, (String)localObject, str);
    }
  }

  private static void a(n paramn, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      int i1 = 0;
      while (i1 < paramArrayList1.size())
      {
        String str1 = (String)paramArrayList1.get(i1);
        String str2 = (String)paramArrayList2.get(i1);
        a(paramn.a, str1, str2);
        i1 += 1;
      }
    }
  }

  private static void a(a<String, String> parama, String paramString1, String paramString2)
  {
    int i1;
    if ((paramString1 != null) && (paramString2 != null))
      i1 = 0;
    while (i1 < parama.size())
    {
      if (paramString1.equals(parama.c(i1)))
      {
        parama.a(i1, paramString2);
        return;
      }
      i1 += 1;
    }
    parama.put(paramString1, paramString2);
  }

  private static void a(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i1 = paramFragment.mContainerId;
      if ((i1 != 0) && (!paramFragment.isHidden()))
      {
        if ((paramFragment.isAdded()) && (paramFragment.getView() != null) && (paramSparseArray1.get(i1) == null))
          paramSparseArray1.put(i1, paramFragment);
        if (paramSparseArray2.get(i1) == paramFragment)
          paramSparseArray2.remove(i1);
      }
    }
  }

  private boolean a(int paramInt, n paramn, boolean paramBoolean, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    ViewGroup localViewGroup = (ViewGroup)this.b.p.a(paramInt);
    if (localViewGroup == null)
      return false;
    Object localObject4 = (Fragment)paramSparseArray2.get(paramInt);
    Object localObject5 = (Fragment)paramSparseArray1.get(paramInt);
    Object localObject2;
    label66: Object localObject3;
    ArrayList localArrayList1;
    Object localObject1;
    if (localObject4 == null)
    {
      localObject2 = null;
      if ((localObject4 != null) && (localObject5 != null))
        break label160;
      paramSparseArray1 = null;
      if (localObject5 != null)
        break label230;
      localObject3 = null;
      localArrayList1 = new ArrayList();
      if (paramSparseArray1 == null)
        break label941;
      localObject1 = a(paramn, (Fragment)localObject5, paramBoolean);
      if (!((a)localObject1).isEmpty())
        break label261;
      localObject1 = null;
      paramSparseArray2 = null;
    }
    while (true)
    {
      if ((localObject2 == null) && (paramSparseArray2 == null) && (localObject3 == null))
      {
        return false;
        if (paramBoolean);
        for (paramSparseArray1 = ((Fragment)localObject4).getReenterTransition(); ; paramSparseArray1 = ((Fragment)localObject4).getEnterTransition())
        {
          localObject2 = ao.a(paramSparseArray1);
          break;
        }
        label160: if (paramBoolean);
        for (paramSparseArray1 = ((Fragment)localObject5).getSharedElementReturnTransition(); ; paramSparseArray1 = ((Fragment)localObject4).getSharedElementEnterTransition())
        {
          if (paramSparseArray1 != null)
            break label192;
          paramSparseArray1 = null;
          break;
        }
        label192: paramSparseArray2 = (Transition)paramSparseArray1;
        if (paramSparseArray2 == null)
        {
          paramSparseArray1 = null;
          break label66;
        }
        paramSparseArray1 = new TransitionSet();
        paramSparseArray1.addTransition(paramSparseArray2);
        break label66;
        label230: if (paramBoolean);
        for (paramSparseArray2 = ((Fragment)localObject5).getReturnTransition(); ; paramSparseArray2 = ((Fragment)localObject5).getExitTransition())
        {
          localObject3 = ao.a(paramSparseArray2);
          break;
        }
        label261: if (paramBoolean);
        for (paramSparseArray2 = ((Fragment)localObject5).mEnterTransitionCallback; ; paramSparseArray2 = ((Fragment)localObject4).mEnterTransitionCallback)
        {
          if (paramSparseArray2 != null)
          {
            new ArrayList(((a)localObject1).keySet());
            new ArrayList(((a)localObject1).values());
          }
          localViewGroup.getViewTreeObserver().addOnPreDrawListener(new k(this, localViewGroup, paramSparseArray1, localArrayList1, paramn, paramBoolean, (Fragment)localObject4, (Fragment)localObject5));
          paramSparseArray2 = paramSparseArray1;
          break;
        }
      }
      ArrayList localArrayList2 = new ArrayList();
      Object localObject6 = a(localObject3, (Fragment)localObject5, localArrayList2, (a)localObject1, paramn.d);
      if ((this.v != null) && (localObject1 != null))
      {
        paramSparseArray1 = (View)((a)localObject1).get(this.v.get(0));
        if (paramSparseArray1 != null)
        {
          if (localObject6 != null)
            ao.a(localObject6, paramSparseArray1);
          if (paramSparseArray2 != null)
            ao.a(paramSparseArray2, paramSparseArray1);
        }
      }
      j localj = new j(this, (Fragment)localObject4);
      localObject5 = new ArrayList();
      a locala = new a();
      if (localObject4 != null)
        if (paramBoolean)
          paramBoolean = ((Fragment)localObject4).getAllowReturnTransitionOverlap();
      while (true)
      {
        localObject3 = (Transition)localObject2;
        paramSparseArray1 = (Transition)localObject6;
        Object localObject7 = (Transition)paramSparseArray2;
        if ((localObject3 != null) && (paramSparseArray1 != null));
        while (true)
        {
          if (paramBoolean)
          {
            localObject4 = new TransitionSet();
            if (localObject3 != null)
              ((TransitionSet)localObject4).addTransition((Transition)localObject3);
            if (paramSparseArray1 != null)
              ((TransitionSet)localObject4).addTransition(paramSparseArray1);
            if (localObject7 != null)
              ((TransitionSet)localObject4).addTransition((Transition)localObject7);
            paramSparseArray1 = (SparseArray<Fragment>)localObject4;
          }
          label926: 
          while (true)
          {
            if (paramSparseArray1 != null)
            {
              localObject3 = paramn.d;
              localObject4 = paramn.c;
              localObject7 = paramn.a;
              if ((localObject2 != null) || (paramSparseArray2 != null))
              {
                Transition localTransition = (Transition)localObject2;
                if (localTransition != null)
                  localTransition.addTarget((View)localObject3);
                if (paramSparseArray2 != null)
                  ao.a(paramSparseArray2, (View)localObject3, (Map)localObject1, localArrayList1);
                localViewGroup.getViewTreeObserver().addOnPreDrawListener(new aq(localViewGroup, localTransition, (View)localObject3, localj, (Map)localObject7, locala, (ArrayList)localObject5));
                if (localTransition != null)
                  localTransition.setEpicenterCallback(new ar((at)localObject4));
              }
              localViewGroup.getViewTreeObserver().addOnPreDrawListener(new l(this, localViewGroup, paramn, paramInt, paramSparseArray1));
              ao.a(paramSparseArray1, paramn.d, true);
              a(paramn, paramInt, paramSparseArray1);
              TransitionManager.beginDelayedTransition(localViewGroup, (Transition)paramSparseArray1);
              localObject1 = paramn.d;
              paramn = paramn.b;
              localObject2 = (Transition)localObject2;
              localObject3 = (Transition)localObject6;
              paramSparseArray2 = (Transition)paramSparseArray2;
              localObject4 = (Transition)paramSparseArray1;
              if (localObject4 != null)
                localViewGroup.getViewTreeObserver().addOnPreDrawListener(new as(localViewGroup, (Transition)localObject2, (ArrayList)localObject5, (Transition)localObject3, localArrayList2, paramSparseArray2, localArrayList1, locala, paramn, (Transition)localObject4, (View)localObject1));
            }
            if (paramSparseArray1 == null)
              break label929;
            return true;
            paramBoolean = ((Fragment)localObject4).getAllowEnterTransitionOverlap();
            break;
            if ((paramSparseArray1 != null) && (localObject3 != null))
              paramSparseArray1 = new TransitionSet().addTransition(paramSparseArray1).addTransition((Transition)localObject3).setOrdering(1);
            while (true)
            {
              if (localObject7 == null)
                break label926;
              localObject3 = new TransitionSet();
              if (paramSparseArray1 != null)
                ((TransitionSet)localObject3).addTransition(paramSparseArray1);
              ((TransitionSet)localObject3).addTransition((Transition)localObject7);
              paramSparseArray1 = (SparseArray<Fragment>)localObject3;
              break;
              if (paramSparseArray1 == null)
              {
                paramSparseArray1 = (SparseArray<Fragment>)localObject3;
                if (localObject3 == null)
                  paramSparseArray1 = null;
              }
            }
          }
          label929: return false;
          paramBoolean = true;
        }
        paramBoolean = true;
      }
      label941: localObject1 = null;
      paramSparseArray2 = paramSparseArray1;
    }
  }

  private static void b(n paramn, a<String, View> parama, boolean paramBoolean)
  {
    int i2 = parama.size();
    int i1 = 0;
    if (i1 < i2)
    {
      String str1 = (String)parama.b(i1);
      String str2 = ((View)parama.c(i1)).getTransitionName();
      if (paramBoolean)
        a(paramn.a, str1, str2);
      while (true)
      {
        i1 += 1;
        break;
        a(paramn.a, str2, str1);
      }
    }
  }

  private void b(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!this.b.p.a());
    m localm;
    do
    {
      return;
      localm = this.c;
    }
    while (localm == null);
    switch (localm.c)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      localm = localm.a;
      break;
      b(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      Object localObject1 = localm.d;
      if (this.b.g != null)
      {
        int i1 = 0;
        if (i1 < this.b.g.size())
        {
          Fragment localFragment = (Fragment)this.b.g.get(i1);
          Object localObject2;
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            if (localFragment.mContainerId != ((Fragment)localObject1).mContainerId);
          }
          else
          {
            if (localFragment != localObject1)
              break label197;
            localObject2 = null;
            paramSparseArray2.remove(localFragment.mContainerId);
          }
          while (true)
          {
            i1 += 1;
            localObject1 = localObject2;
            break;
            label197: a(paramSparseArray1, paramSparseArray2, localFragment);
            localObject2 = localObject1;
          }
        }
      }
      b(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      a(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      a(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      b(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      a(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      b(paramSparseArray1, paramSparseArray2, localm.d);
    }
  }

  private void b(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i1 = paramFragment.mContainerId;
      if (i1 != 0)
      {
        if (!paramFragment.isAdded())
          paramSparseArray2.put(i1, paramFragment);
        if (paramSparseArray1.get(i1) == paramFragment)
          paramSparseArray1.remove(i1);
      }
      if ((paramFragment.mState <= 0) && (this.b.n > 0))
      {
        this.b.b(paramFragment);
        this.b.a(paramFragment, 1, 0, 0, false);
      }
    }
  }

  public final int a()
  {
    return a(false);
  }

  public final an a(Fragment paramFragment)
  {
    m localm = new m();
    localm.c = 3;
    localm.d = paramFragment;
    a(localm);
    return this;
  }

  public final an a(Fragment paramFragment, String paramString)
  {
    paramFragment.mFragmentManager = this.b;
    if (paramString != null)
    {
      if ((paramFragment.mTag != null) && (!paramString.equals(paramFragment.mTag)))
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.mTag + " now " + paramString);
      paramFragment.mTag = paramString;
    }
    paramString = new m();
    paramString.c = 1;
    paramString.d = paramFragment;
    a(paramString);
    return this;
  }

  public final n a(boolean paramBoolean, n paramn, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (ad.a)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      a("  ", new PrintWriter(new e("FragmentManager")));
    }
    n localn = paramn;
    if (a)
    {
      localn = paramn;
      if (this.b.n > 0)
      {
        if (paramn != null)
          break label224;
        if (paramSparseArray1.size() == 0)
        {
          localn = paramn;
          if (paramSparseArray2.size() == 0);
        }
        else
        {
          localn = a(paramSparseArray1, paramSparseArray2, true);
        }
      }
    }
    label105: a(-1);
    int i1;
    label118: int i2;
    label126: int i3;
    if (localn != null)
    {
      i1 = 0;
      if (localn == null)
        break label258;
      i2 = 0;
      paramn = this.d;
      if (paramn == null)
        break label547;
      if (localn == null)
        break label267;
      i3 = 0;
      label143: if (localn == null)
        break label276;
    }
    label258: label267: label276: for (int i4 = 0; ; i4 = paramn.h)
      switch (paramn.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + paramn.c);
        label224: localn = paramn;
        if (paramBoolean)
          break label105;
        a(paramn, this.v, this.u);
        localn = paramn;
        break label105;
        i1 = this.k;
        break label118;
        i2 = this.j;
        break label126;
        i3 = paramn.g;
        break label143;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
    paramSparseArray1 = paramn.d;
    paramSparseArray1.mNextAnim = i4;
    this.b.a(paramSparseArray1, ad.c(i2), i1);
    while (true)
    {
      paramn = paramn.b;
      break;
      paramSparseArray1 = paramn.d;
      if (paramSparseArray1 != null)
      {
        paramSparseArray1.mNextAnim = i4;
        this.b.a(paramSparseArray1, ad.c(i2), i1);
      }
      if (paramn.i != null)
      {
        i4 = 0;
        while (i4 < paramn.i.size())
        {
          paramSparseArray1 = (Fragment)paramn.i.get(i4);
          paramSparseArray1.mNextAnim = i3;
          this.b.a(paramSparseArray1, false);
          i4 += 1;
        }
        paramSparseArray1 = paramn.d;
        paramSparseArray1.mNextAnim = i3;
        this.b.a(paramSparseArray1, false);
        continue;
        paramSparseArray1 = paramn.d;
        paramSparseArray1.mNextAnim = i3;
        this.b.c(paramSparseArray1, ad.c(i2), i1);
        continue;
        paramSparseArray1 = paramn.d;
        paramSparseArray1.mNextAnim = i4;
        this.b.b(paramSparseArray1, ad.c(i2), i1);
        continue;
        paramSparseArray1 = paramn.d;
        paramSparseArray1.mNextAnim = i3;
        this.b.e(paramSparseArray1, ad.c(i2), i1);
        continue;
        paramSparseArray1 = paramn.d;
        paramSparseArray1.mNextAnim = i3;
        this.b.d(paramSparseArray1, ad.c(i2), i1);
      }
    }
    label547: if (paramBoolean)
    {
      this.b.a(this.b.n, ad.c(i2), i1, true);
      localn = null;
    }
    if (this.p >= 0)
    {
      paramn = this.b;
      i1 = this.p;
    }
    try
    {
      paramn.k.set(i1, null);
      if (paramn.l == null)
        paramn.l = new ArrayList();
      if (ad.a)
        Log.v("FragmentManager", "Freeing back stack index " + i1);
      paramn.l.add(Integer.valueOf(i1));
      this.p = -1;
      return localn;
    }
    finally
    {
    }
    throw paramSparseArray1;
  }

  final void a(int paramInt)
  {
    if (!this.l);
    while (true)
    {
      return;
      if (ad.a)
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      for (m localm = this.c; localm != null; localm = localm.a)
      {
        Fragment localFragment;
        if (localm.d != null)
        {
          localFragment = localm.d;
          localFragment.mBackStackNesting += paramInt;
          if (ad.a)
            Log.v("FragmentManager", "Bump nesting of " + localm.d + " to " + localm.d.mBackStackNesting);
        }
        if (localm.i != null)
        {
          int i1 = localm.i.size() - 1;
          while (i1 >= 0)
          {
            localFragment = (Fragment)localm.i.get(i1);
            localFragment.mBackStackNesting += paramInt;
            if (ad.a)
              Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + localFragment.mBackStackNesting);
            i1 -= 1;
          }
        }
      }
    }
  }

  final void a(m paramm)
  {
    if (this.c == null)
    {
      this.d = paramm;
      this.c = paramm;
    }
    while (true)
    {
      paramm.e = this.f;
      paramm.f = this.g;
      paramm.g = this.h;
      paramm.h = this.i;
      this.e += 1;
      return;
      paramm.b = this.d;
      this.d.a = paramm;
      this.d = paramm;
    }
  }

  public final void a(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!this.b.p.a());
    m localm;
    do
    {
      return;
      localm = this.d;
    }
    while (localm == null);
    switch (localm.c)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      localm = localm.b;
      break;
      a(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      if (localm.i != null)
      {
        int i1 = localm.i.size() - 1;
        while (i1 >= 0)
        {
          b(paramSparseArray1, paramSparseArray2, (Fragment)localm.i.get(i1));
          i1 -= 1;
        }
      }
      a(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      b(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      b(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      a(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      b(paramSparseArray1, paramSparseArray2, localm.d);
      continue;
      a(paramSparseArray1, paramSparseArray2, localm.d);
    }
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    a(paramString, paramPrintWriter, true);
  }

  public final void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.n);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.p);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.o);
      if (this.j != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.j));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(this.k));
      }
      if ((this.f != 0) || (this.g != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.f));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.g));
      }
      if ((this.h != 0) || (this.i != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.h));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.i));
      }
      if ((this.q != 0) || (this.r != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.q));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.r);
      }
      if ((this.s != 0) || (this.t != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.s));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.t);
      }
    }
    if (this.c != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str2 = paramString + "    ";
      m localm = this.c;
      int i1 = 0;
      while (localm != null)
      {
        String str1;
        int i2;
        switch (localm.c)
        {
        default:
          str1 = "cmd=" + localm.c;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str1);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(localm.d);
          if (paramBoolean)
          {
            if ((localm.e != 0) || (localm.f != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localm.e));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localm.f));
            }
            if ((localm.g != 0) || (localm.h != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localm.g));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localm.h));
            }
          }
          if ((localm.i == null) || (localm.i.size() <= 0))
            break label804;
          i2 = 0;
          label638: if (i2 >= localm.i.size())
            break label804;
          paramPrintWriter.print(str2);
          if (localm.i.size() == 1)
            paramPrintWriter.print("Removed: ");
          break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
        while (true)
        {
          paramPrintWriter.println(localm.i.get(i2));
          i2 += 1;
          break label638;
          str1 = "NULL";
          break;
          str1 = "ADD";
          break;
          str1 = "REPLACE";
          break;
          str1 = "REMOVE";
          break;
          str1 = "HIDE";
          break;
          str1 = "SHOW";
          break;
          str1 = "DETACH";
          break;
          str1 = "ATTACH";
          break;
          if (i2 == 0)
            paramPrintWriter.println("Removed:");
          paramPrintWriter.print(str2);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i2);
          paramPrintWriter.print(": ");
        }
        label804: localm = localm.a;
        i1 += 1;
      }
    }
  }

  public final int b()
  {
    return a(true);
  }

  public final void run()
  {
    if (ad.a)
      Log.v("FragmentManager", "Run: " + this);
    if ((this.l) && (this.p < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    a(1);
    Object localObject1;
    if ((a) && (this.b.n > 0))
    {
      localObject1 = new SparseArray();
      localObject2 = new SparseArray();
      b((SparseArray)localObject1, (SparseArray)localObject2);
    }
    for (Object localObject2 = a((SparseArray)localObject1, (SparseArray)localObject2, false); ; localObject2 = null)
    {
      int i1;
      label119: int i2;
      label126: m localm;
      int i3;
      if (localObject2 != null)
      {
        i1 = 0;
        if (localObject2 == null)
          break label237;
        i2 = 0;
        localm = this.c;
        if (localm == null)
          break label718;
        if (localObject2 == null)
          break label245;
        i3 = 0;
        label144: if (localObject2 == null)
          break label254;
      }
      label237: label245: label254: for (int i4 = 0; ; i4 = localm.f)
        switch (localm.c)
        {
        default:
          throw new IllegalArgumentException("Unknown cmd: " + localm.c);
          i1 = this.k;
          break label119;
          i2 = this.j;
          break label126;
          i3 = localm.e;
          break label144;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
      localObject1 = localm.d;
      ((Fragment)localObject1).mNextAnim = i3;
      this.b.a((Fragment)localObject1, false);
      while (true)
      {
        localm = localm.a;
        break;
        localObject1 = localm.d;
        int i6 = ((Fragment)localObject1).mContainerId;
        Object localObject3 = localObject1;
        if (this.b.g != null)
        {
          int i5 = this.b.g.size() - 1;
          localObject3 = localObject1;
          if (i5 >= 0)
          {
            localObject3 = (Fragment)this.b.g.get(i5);
            if (ad.a)
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localObject1 + " old=" + localObject3);
            if (((Fragment)localObject3).mContainerId == i6)
              if (localObject3 == localObject1)
              {
                localObject1 = null;
                localm.d = null;
              }
            while (true)
            {
              i5 -= 1;
              break;
              if (localm.i == null)
                localm.i = new ArrayList();
              localm.i.add(localObject3);
              ((Fragment)localObject3).mNextAnim = i4;
              if (this.l)
              {
                ((Fragment)localObject3).mBackStackNesting += 1;
                if (ad.a)
                  Log.v("FragmentManager", "Bump nesting of " + localObject3 + " to " + ((Fragment)localObject3).mBackStackNesting);
              }
              this.b.a((Fragment)localObject3, i2, i1);
            }
          }
        }
        if (localObject3 != null)
        {
          ((Fragment)localObject3).mNextAnim = i3;
          this.b.a((Fragment)localObject3, false);
          continue;
          localObject1 = localm.d;
          ((Fragment)localObject1).mNextAnim = i4;
          this.b.a((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = localm.d;
          ((Fragment)localObject1).mNextAnim = i4;
          this.b.b((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = localm.d;
          ((Fragment)localObject1).mNextAnim = i3;
          this.b.c((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = localm.d;
          ((Fragment)localObject1).mNextAnim = i4;
          this.b.d((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = localm.d;
          ((Fragment)localObject1).mNextAnim = i3;
          this.b.e((Fragment)localObject1, i2, i1);
        }
      }
      label718: this.b.a(this.b.n, i2, i1, true);
      if (this.l)
      {
        localObject1 = this.b;
        if (((ad)localObject1).i == null)
          ((ad)localObject1).i = new ArrayList();
        ((ad)localObject1).i.add(this);
        ((ad)localObject1).e();
      }
      return;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.p >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.p);
    }
    if (this.n != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.n);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.i
 * JD-Core Version:    0.6.2
 */