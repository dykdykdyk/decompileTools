package android.support.v7.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.d.a.a;
import android.support.v7.view.menu.ab;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

@TargetApi(11)
public final class g extends ActionMode
{
  final Context a;
  final b b;

  public g(Context paramContext, b paramb)
  {
    this.a = paramContext;
    this.b = paramb;
  }

  public final void finish()
  {
    this.b.c();
  }

  public final View getCustomView()
  {
    return this.b.i();
  }

  public final Menu getMenu()
  {
    return ab.a(this.a, (a)this.b.b());
  }

  public final MenuInflater getMenuInflater()
  {
    return this.b.a();
  }

  public final CharSequence getSubtitle()
  {
    return this.b.g();
  }

  public final Object getTag()
  {
    return this.b.b;
  }

  public final CharSequence getTitle()
  {
    return this.b.f();
  }

  public final boolean getTitleOptionalHint()
  {
    return this.b.c;
  }

  public final void invalidate()
  {
    this.b.d();
  }

  public final boolean isTitleOptional()
  {
    return this.b.h();
  }

  public final void setCustomView(View paramView)
  {
    this.b.a(paramView);
  }

  public final void setSubtitle(int paramInt)
  {
    this.b.b(paramInt);
  }

  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.b.a(paramCharSequence);
  }

  public final void setTag(Object paramObject)
  {
    this.b.b = paramObject;
  }

  public final void setTitle(int paramInt)
  {
    this.b.a(paramInt);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.b.b(paramCharSequence);
  }

  public final void setTitleOptionalHint(boolean paramBoolean)
  {
    this.b.a(paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.g
 * JD-Core Version:    0.6.2
 */