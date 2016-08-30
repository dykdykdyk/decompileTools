package android.support.v7.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.widget.j;
import android.support.v7.b.e;
import android.support.v7.view.d;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public final class SearchView extends co
  implements d
{
  static final fb a;
  private static final boolean b;
  private boolean A;
  private boolean B;
  private int C;
  private boolean D;
  private CharSequence E;
  private boolean F;
  private int G;
  private SearchableInfo H;
  private Bundle I;
  private Runnable J;
  private final Runnable K;
  private Runnable L;
  private final WeakHashMap<String, Drawable.ConstantState> M;
  private final SearchView.SearchAutoComplete c;
  private final View d;
  private final View e;
  private final ImageView f;
  private final ImageView g;
  private final ImageView h;
  private final ImageView i;
  private final ImageView j;
  private final Drawable k;
  private final int l;
  private final int m;
  private final Intent n;
  private final Intent o;
  private final CharSequence p;
  private fd q;
  private fc r;
  private View.OnFocusChangeListener s;
  private fe t;
  private View.OnClickListener u;
  private boolean v;
  private boolean w;
  private j x;
  private boolean y;
  private CharSequence z;

  static
  {
    if (Build.VERSION.SDK_INT >= 8);
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      a = new fb();
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    int i5 = 1;
    int i4 = 8;
    this.w = paramBoolean;
    int i1;
    if (paramBoolean)
    {
      i2 = 0;
      if (TextUtils.isEmpty(this.c.getText()))
        break label312;
      i1 = 1;
      label33: this.f.setVisibility(i2);
      if ((!this.y) || (!e()) || (!hasFocus()) || ((i1 == 0) && (this.D)))
        break label364;
    }
    label96: label225: label358: label364: for (int i2 = 0; ; i2 = 8)
    {
      this.g.setVisibility(i2);
      Object localObject = this.d;
      label122: int i3;
      if (paramBoolean)
      {
        i2 = 8;
        ((View)localObject).setVisibility(i2);
        if ((this.j.getDrawable() != null) && (!this.v))
          break label322;
        i2 = 8;
        this.j.setVisibility(i2);
        if (TextUtils.isEmpty(this.c.getText()))
          break label327;
        i2 = 1;
        if ((i2 == 0) && ((!this.v) || (this.F)))
          break label332;
        i3 = 1;
        localObject = this.h;
        if (i3 == 0)
          break label338;
        i3 = 0;
        ((ImageView)localObject).setVisibility(i3);
        Drawable localDrawable = this.h.getDrawable();
        if (localDrawable != null)
        {
          if (i2 == 0)
            break label345;
          localObject = ENABLED_STATE_SET;
          localDrawable.setState((int[])localObject);
        }
        if (i1 != 0)
          break label353;
        i1 = i5;
        if ((!this.D) || (this.w) || (i1 == 0))
          break label358;
        this.g.setVisibility(8);
      }
      for (i1 = 0; ; i1 = 8)
      {
        this.i.setVisibility(i1);
        i1 = i4;
        if (e())
          if (this.g.getVisibility() != 0)
          {
            i1 = i4;
            if (this.i.getVisibility() != 0);
          }
          else
          {
            i1 = 0;
          }
        this.e.setVisibility(i1);
        return;
        i2 = 8;
        break;
        i1 = 0;
        break label33;
        i2 = 0;
        break label96;
        i2 = 0;
        break label122;
        i2 = 0;
        break label145;
        i3 = 0;
        break label166;
        i3 = 8;
        break label180;
        localObject = EMPTY_STATE_SET;
        break label210;
        i1 = 0;
        break label225;
      }
    }
  }

  static boolean a(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }

  private boolean e()
  {
    return ((this.y) || (this.D)) && (!this.w);
  }

  private void f()
  {
    post(this.K);
  }

  private void g()
  {
    Object localObject2 = getQueryHint();
    SearchView.SearchAutoComplete localSearchAutoComplete = this.c;
    Object localObject1 = localObject2;
    if (localObject2 == null)
      localObject1 = "";
    localObject2 = localObject1;
    if (this.v)
    {
      if (this.k != null)
        break label45;
      localObject2 = localObject1;
    }
    while (true)
    {
      localSearchAutoComplete.setHint((CharSequence)localObject2);
      return;
      label45: int i1 = (int)(this.c.getTextSize() * 1.25D);
      this.k.setBounds(0, 0, i1, i1);
      localObject2 = new SpannableStringBuilder("   ");
      ((SpannableStringBuilder)localObject2).setSpan(new ImageSpan(this.k), 1, 2, 33);
      ((SpannableStringBuilder)localObject2).append((CharSequence)localObject1);
    }
  }

  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(e.abc_search_view_preferred_width);
  }

  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean)
      post(this.J);
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(this.J);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    }
    while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }

  public final void a()
  {
    if (this.F)
      return;
    this.F = true;
    this.G = this.c.getImeOptions();
    this.c.setImeOptions(this.G | 0x2000000);
    this.c.setText("");
    setIconified(false);
  }

  public final void b()
  {
    this.c.setText("");
    this.c.setSelection(this.c.length());
    this.E = "";
    clearFocus();
    a(true);
    this.c.setImeOptions(this.G);
    this.F = false;
  }

  public final void clearFocus()
  {
    this.B = true;
    setImeVisibility(false);
    super.clearFocus();
    this.c.clearFocus();
    this.B = false;
  }

  final void d()
  {
    a(this.w);
    f();
    fb localfb;
    SearchView.SearchAutoComplete localSearchAutoComplete;
    if (this.c.hasFocus())
    {
      localfb = a;
      localSearchAutoComplete = this.c;
      if (localfb.a == null);
    }
    try
    {
      localfb.a.invoke(localSearchAutoComplete, new Object[0]);
      label51: localfb = a;
      localSearchAutoComplete = this.c;
      if (localfb.b != null);
      try
      {
        localfb.b.invoke(localSearchAutoComplete, new Object[0]);
        return;
      }
      catch (Exception localException1)
      {
      }
    }
    catch (Exception localException2)
    {
      break label51;
    }
  }

  public final int getImeOptions()
  {
    return this.c.getImeOptions();
  }

  public final int getInputType()
  {
    return this.c.getInputType();
  }

  public final int getMaxWidth()
  {
    return this.C;
  }

  public final CharSequence getQuery()
  {
    return this.c.getText();
  }

  public final CharSequence getQueryHint()
  {
    if (this.z != null)
      return this.z;
    if ((b) && (this.H != null) && (this.H.getHintId() != 0))
      return getContext().getText(this.H.getHintId());
    return this.p;
  }

  final int getSuggestionCommitIconResId()
  {
    return this.m;
  }

  final int getSuggestionRowLayout()
  {
    return this.l;
  }

  public final j getSuggestionsAdapter()
  {
    return this.x;
  }

  protected final void onDetachedFromWindow()
  {
    removeCallbacks(this.K);
    post(this.L);
    super.onDetachedFromWindow();
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.w)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (i2)
    {
    default:
      paramInt1 = i1;
    case -2147483648:
    case 1073741824:
    case 0:
    }
    while (true)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (this.C > 0)
      {
        paramInt1 = Math.min(this.C, i1);
      }
      else
      {
        paramInt1 = Math.min(getPreferredWidth(), i1);
        continue;
        paramInt1 = i1;
        if (this.C > 0)
        {
          paramInt1 = Math.min(this.C, i1);
          continue;
          if (this.C > 0)
            paramInt1 = this.C;
          else
            paramInt1 = getPreferredWidth();
        }
      }
    }
  }

  protected final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SearchView.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SearchView.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a(paramParcelable.a);
    requestLayout();
  }

  protected final Parcelable onSaveInstanceState()
  {
    SearchView.SavedState localSavedState = new SearchView.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.w;
    return localSavedState;
  }

  public final void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    f();
  }

  public final boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.B);
    while (!isFocusable())
      return false;
    if (!this.w)
    {
      boolean bool = this.c.requestFocus(paramInt, paramRect);
      if (bool)
        a(false);
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }

  public final void setAppSearchData(Bundle paramBundle)
  {
    this.I = paramBundle;
  }

  public final void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
      if (TextUtils.isEmpty(this.c.getText()))
        if ((this.v) && ((this.r == null) || (!this.r.a())))
        {
          clearFocus();
          a(true);
        }
    do
    {
      return;
      this.c.setText("");
      this.c.requestFocus();
      setImeVisibility(true);
      return;
      a(false);
      this.c.requestFocus();
      setImeVisibility(true);
    }
    while (this.u == null);
    this.u.onClick(this);
  }

  public final void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.v == paramBoolean)
      return;
    this.v = paramBoolean;
    a(paramBoolean);
    g();
  }

  public final void setImeOptions(int paramInt)
  {
    this.c.setImeOptions(paramInt);
  }

  public final void setInputType(int paramInt)
  {
    this.c.setInputType(paramInt);
  }

  public final void setMaxWidth(int paramInt)
  {
    this.C = paramInt;
    requestLayout();
  }

  public final void setOnCloseListener(fc paramfc)
  {
    this.r = paramfc;
  }

  public final void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.s = paramOnFocusChangeListener;
  }

  public final void setOnQueryTextListener(fd paramfd)
  {
    this.q = paramfd;
  }

  public final void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.u = paramOnClickListener;
  }

  public final void setOnSuggestionListener(fe paramfe)
  {
    this.t = paramfe;
  }

  final void setQuery(CharSequence paramCharSequence)
  {
    this.c.setText(paramCharSequence);
    SearchView.SearchAutoComplete localSearchAutoComplete = this.c;
    if (TextUtils.isEmpty(paramCharSequence));
    for (int i1 = 0; ; i1 = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i1);
      return;
    }
  }

  public final void setQueryHint(CharSequence paramCharSequence)
  {
    this.z = paramCharSequence;
    g();
  }

  public final void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.A = paramBoolean;
    fn localfn;
    if ((this.x instanceof fn))
    {
      localfn = (fn)this.x;
      if (!paramBoolean)
        break label35;
    }
    label35: for (int i1 = 2; ; i1 = 1)
    {
      localfn.j = i1;
      return;
    }
  }

  public final void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    boolean bool = true;
    this.H = paramSearchableInfo;
    int i1;
    if (this.H != null)
    {
      if (b)
      {
        this.c.setThreshold(this.H.getSuggestThreshold());
        this.c.setImeOptions(this.H.getImeOptions());
        int i2 = this.H.getInputType();
        i1 = i2;
        if ((i2 & 0xF) == 1)
        {
          i2 &= -65537;
          i1 = i2;
          if (this.H.getSuggestAuthority() != null)
            i1 = i2 | 0x10000 | 0x80000;
        }
        this.c.setInputType(i1);
        if (this.x != null)
          this.x.a(null);
        if (this.H.getSuggestAuthority() != null)
        {
          this.x = new fn(getContext(), this, this.H, this.M);
          this.c.setAdapter(this.x);
          paramSearchableInfo = (fn)this.x;
          if (!this.A)
            break label286;
          i1 = 2;
          paramSearchableInfo.j = i1;
        }
      }
      g();
    }
    else
    {
      if (!b)
        break label319;
      if ((this.H == null) || (!this.H.getVoiceSearchEnabled()))
        break label314;
      if (!this.H.getVoiceSearchLaunchWebSearch())
        break label291;
      paramSearchableInfo = this.n;
    }
    while (true)
    {
      label227: if (paramSearchableInfo != null)
        if (getContext().getPackageManager().resolveActivity(paramSearchableInfo, 65536) != null)
        {
          i1 = 1;
          label250: if (i1 == 0)
            break label319;
        }
      while (true)
      {
        this.D = bool;
        if (this.D)
          this.c.setPrivateImeOptions("nm");
        a(this.w);
        return;
        label286: i1 = 1;
        break;
        label291: if (!this.H.getVoiceSearchLaunchRecognizer())
          break label325;
        paramSearchableInfo = this.o;
        break label227;
        i1 = 0;
        break label250;
        label314: i1 = 0;
        break label250;
        label319: bool = false;
      }
      label325: paramSearchableInfo = null;
    }
  }

  public final void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.y = paramBoolean;
    a(this.w);
  }

  public final void setSuggestionsAdapter(j paramj)
  {
    this.x = paramj;
    this.c.setAdapter(this.x);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.SearchView
 * JD-Core Version:    0.6.2
 */