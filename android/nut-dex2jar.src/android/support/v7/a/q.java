package android.support.v7.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.bl;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.b.b;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;

public final class q extends aq
  implements DialogInterface
{
  private d a = new d(getContext(), this, getWindow());

  public q(Context paramContext, int paramInt)
  {
    super(paramContext, a(paramContext, paramInt));
  }

  static int a(Context paramContext, int paramInt)
  {
    if (paramInt >= 16777216)
      return paramInt;
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(b.alertDialogTheme, localTypedValue, true);
    return localTypedValue.resourceId;
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    d locald = this.a;
    int i;
    Object localObject4;
    Object localObject3;
    Object localObject2;
    Object localObject1;
    label108: label114: label509: int k;
    label225: label360: int j;
    if ((locald.G != 0) && (locald.L == 1))
    {
      i = locald.G;
      locald.b.setContentView(i);
      paramBundle = locald.c.findViewById(android.support.v7.b.g.parentPanel);
      localObject4 = paramBundle.findViewById(android.support.v7.b.g.topPanel);
      localObject3 = paramBundle.findViewById(android.support.v7.b.g.contentPanel);
      localObject2 = paramBundle.findViewById(android.support.v7.b.g.buttonPanel);
      localObject1 = (ViewGroup)paramBundle.findViewById(android.support.v7.b.g.customPanel);
      if (locald.g == null)
        break label833;
      paramBundle = locald.g;
      if (paramBundle == null)
        break label869;
      i = 1;
      if ((i == 0) || (!d.a(paramBundle)))
        locald.c.setFlags(131072, 131072);
      if (i == 0)
        break label874;
      Object localObject5 = (FrameLayout)locald.c.findViewById(android.support.v7.b.g.custom);
      ((FrameLayout)localObject5).addView(paramBundle, new ViewGroup.LayoutParams(-1, -1));
      if (locald.m)
        ((FrameLayout)localObject5).setPadding(locald.i, locald.j, locald.k, locald.l);
      if (locald.f != null)
        ((LinearLayout.LayoutParams)((ViewGroup)localObject1).getLayoutParams()).weight = 0.0F;
      paramBundle = ((ViewGroup)localObject1).findViewById(android.support.v7.b.g.topPanel);
      View localView = ((ViewGroup)localObject1).findViewById(android.support.v7.b.g.contentPanel);
      localObject5 = ((ViewGroup)localObject1).findViewById(android.support.v7.b.g.buttonPanel);
      paramBundle = d.a(paramBundle, (View)localObject4);
      localObject3 = d.a(localView, (View)localObject3);
      localObject2 = d.a((View)localObject5, (View)localObject2);
      locald.w = ((NestedScrollView)locald.c.findViewById(android.support.v7.b.g.scrollView));
      locald.w.setFocusable(false);
      locald.w.setNestedScrollingEnabled(false);
      locald.B = ((TextView)((ViewGroup)localObject3).findViewById(16908299));
      if (locald.B != null)
      {
        if (locald.e == null)
          break label884;
        locald.B.setText(locald.e);
      }
      i = 0;
      locald.n = ((Button)((ViewGroup)localObject2).findViewById(16908313));
      locald.n.setOnClickListener(locald.N);
      if (!TextUtils.isEmpty(locald.o))
        break label978;
      locald.n.setVisibility(8);
      label411: locald.q = ((Button)((ViewGroup)localObject2).findViewById(16908314));
      locald.q.setOnClickListener(locald.N);
      if (!TextUtils.isEmpty(locald.r))
        break label1005;
      locald.q.setVisibility(8);
      label460: locald.t = ((Button)((ViewGroup)localObject2).findViewById(16908315));
      locald.t.setOnClickListener(locald.N);
      if (!TextUtils.isEmpty(locald.u))
        break label1034;
      locald.t.setVisibility(8);
      if (i == 0)
        break label1063;
      i = 1;
      label515: if (i == 0)
        ((ViewGroup)localObject2).setVisibility(8);
      if (locald.C == null)
        break label1068;
      localObject4 = new ViewGroup.LayoutParams(-1, -2);
      paramBundle.addView(locald.C, 0, (ViewGroup.LayoutParams)localObject4);
      locald.c.findViewById(android.support.v7.b.g.title_template).setVisibility(8);
      label574: if ((localObject1 == null) || (((ViewGroup)localObject1).getVisibility() == 8))
        break label1277;
      i = 1;
      label591: if ((paramBundle == null) || (paramBundle.getVisibility() == 8))
        break label1282;
      k = 1;
      label607: if ((localObject2 == null) || (((ViewGroup)localObject2).getVisibility() == 8))
        break label1288;
      j = 1;
      label624: if ((j == 0) && (localObject3 != null))
      {
        paramBundle = ((ViewGroup)localObject3).findViewById(android.support.v7.b.g.textSpacerNoButtons);
        if (paramBundle != null)
          paramBundle.setVisibility(0);
      }
      if ((k != 0) && (locald.w != null))
        locald.w.setClipToPadding(true);
      if (i == 0)
      {
        if (locald.f == null)
          break label1293;
        paramBundle = locald.f;
        label691: if (paramBundle != null)
        {
          if (k == 0)
            break label1302;
          i = 1;
          label702: if (j == 0)
            break label1307;
          j = 2;
          label708: i |= j;
          localObject1 = locald.c.findViewById(android.support.v7.b.g.scrollIndicatorUp);
          localObject2 = locald.c.findViewById(android.support.v7.b.g.scrollIndicatorDown);
          if (Build.VERSION.SDK_INT < 23)
            break label1312;
          bl.e(paramBundle, i);
          if (localObject1 != null)
            ((ViewGroup)localObject3).removeView((View)localObject1);
          if (localObject2 != null)
            ((ViewGroup)localObject3).removeView((View)localObject2);
        }
      }
    }
    while (true)
    {
      paramBundle = locald.f;
      if ((paramBundle != null) && (locald.D != null))
      {
        paramBundle.setAdapter(locald.D);
        i = locald.E;
        if (i >= 0)
        {
          paramBundle.setItemChecked(i, true);
          paramBundle.setSelection(i);
        }
      }
      return;
      i = locald.F;
      break;
      label833: if (locald.h != 0)
      {
        paramBundle = LayoutInflater.from(locald.a).inflate(locald.h, (ViewGroup)localObject1, false);
        break label108;
      }
      paramBundle = null;
      break label108;
      label869: i = 0;
      break label114;
      label874: ((ViewGroup)localObject1).setVisibility(8);
      break label225;
      label884: locald.B.setVisibility(8);
      locald.w.removeView(locald.B);
      if (locald.f != null)
      {
        localObject4 = (ViewGroup)locald.w.getParent();
        i = ((ViewGroup)localObject4).indexOfChild(locald.w);
        ((ViewGroup)localObject4).removeViewAt(i);
        ((ViewGroup)localObject4).addView(locald.f, i, new ViewGroup.LayoutParams(-1, -1));
        break label360;
      }
      ((ViewGroup)localObject3).setVisibility(8);
      break label360;
      label978: locald.n.setText(locald.o);
      locald.n.setVisibility(0);
      i = 1;
      break label411;
      label1005: locald.q.setText(locald.r);
      locald.q.setVisibility(0);
      i |= 2;
      break label460;
      label1034: locald.t.setText(locald.u);
      locald.t.setVisibility(0);
      i |= 4;
      break label509;
      label1063: i = 0;
      break label515;
      label1068: locald.z = ((ImageView)locald.c.findViewById(16908294));
      if (!TextUtils.isEmpty(locald.d))
        i = 1;
      while (true)
        if (i != 0)
        {
          locald.A = ((TextView)locald.c.findViewById(android.support.v7.b.g.alertTitle));
          locald.A.setText(locald.d);
          if (locald.x != 0)
          {
            locald.z.setImageResource(locald.x);
            break;
            i = 0;
            continue;
          }
          if (locald.y != null)
          {
            locald.z.setImageDrawable(locald.y);
            break;
          }
          locald.A.setPadding(locald.z.getPaddingLeft(), locald.z.getPaddingTop(), locald.z.getPaddingRight(), locald.z.getPaddingBottom());
          locald.z.setVisibility(8);
          break;
        }
      locald.c.findViewById(android.support.v7.b.g.title_template).setVisibility(8);
      locald.z.setVisibility(8);
      paramBundle.setVisibility(8);
      break label574;
      label1277: i = 0;
      break label591;
      label1282: k = 0;
      break label607;
      label1288: j = 0;
      break label624;
      label1293: paramBundle = locald.w;
      break label691;
      label1302: i = 0;
      break label702;
      label1307: j = 0;
      break label708;
      label1312: paramBundle = (Bundle)localObject1;
      if (localObject1 != null)
      {
        paramBundle = (Bundle)localObject1;
        if ((i & 0x1) == 0)
        {
          ((ViewGroup)localObject3).removeView((View)localObject1);
          paramBundle = null;
        }
      }
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if ((i & 0x2) == 0)
        {
          ((ViewGroup)localObject3).removeView((View)localObject2);
          localObject1 = null;
        }
      }
      if ((paramBundle != null) || (localObject1 != null))
        if (locald.e != null)
        {
          locald.w.setOnScrollChangeListener(new f(locald, paramBundle, (View)localObject1));
          locald.w.post(new g(locald, paramBundle, (View)localObject1));
        }
        else if (locald.f != null)
        {
          locald.f.setOnScrollListener(new h(locald, paramBundle, (View)localObject1));
          locald.f.post(new i(locald, paramBundle, (View)localObject1));
        }
        else
        {
          if (paramBundle != null)
            ((ViewGroup)localObject3).removeView(paramBundle);
          if (localObject1 != null)
            ((ViewGroup)localObject3).removeView((View)localObject1);
        }
    }
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    d locald = this.a;
    if ((locald.w != null) && (locald.w.a(paramKeyEvent)));
    for (int i = 1; i != 0; i = 0)
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    d locald = this.a;
    if ((locald.w != null) && (locald.w.a(paramKeyEvent)));
    for (int i = 1; i != 0; i = 0)
      return true;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    this.a.a(paramCharSequence);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.q
 * JD-Core Version:    0.6.2
 */