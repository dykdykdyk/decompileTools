package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.a.c;
import android.support.v7.b.b;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

final class fa extends co
  implements View.OnLongClickListener
{
  c a;
  private final int[] c = { 16842964 };
  private TextView d;
  private ImageView e;
  private View f;

  public fa(ex paramex, Context paramContext, c paramc)
  {
    super(paramContext, null, b.actionBarTabStyle);
    this.a = paramc;
    paramex = ft.a(paramContext, null, this.c, b.actionBarTabStyle);
    if (paramex.e(0))
      setBackgroundDrawable(paramex.a(0));
    paramex.a.recycle();
    setGravity(8388627);
    a();
  }

  public final void a()
  {
    Object localObject1 = this.a;
    Object localObject2 = ((c)localObject1).c();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null)
          ((ViewGroup)localObject1).removeView((View)localObject2);
        addView((View)localObject2);
      }
      this.f = ((View)localObject2);
      if (this.d != null)
        this.d.setVisibility(8);
      if (this.e != null)
      {
        this.e.setVisibility(8);
        this.e.setImageDrawable(null);
      }
      return;
    }
    if (this.f != null)
    {
      removeView(this.f);
      this.f = null;
    }
    Object localObject3 = ((c)localObject1).a();
    localObject2 = ((c)localObject1).b();
    int i;
    if (localObject3 != null)
    {
      Object localObject4;
      if (this.e == null)
      {
        localObject4 = new ImageView(getContext());
        cp localcp = new cp(-2, -2);
        localcp.h = 16;
        ((ImageView)localObject4).setLayoutParams(localcp);
        addView((View)localObject4, 0);
        this.e = ((ImageView)localObject4);
      }
      this.e.setImageDrawable((Drawable)localObject3);
      this.e.setVisibility(0);
      if (TextUtils.isEmpty((CharSequence)localObject2))
        break label365;
      i = 1;
      label209: if (i == 0)
        break label370;
      if (this.d == null)
      {
        localObject3 = new bo(getContext(), null, b.actionBarTabTextStyle);
        ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
        localObject4 = new cp(-2, -2);
        ((cp)localObject4).h = 16;
        ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        addView((View)localObject3);
        this.d = ((TextView)localObject3);
      }
      this.d.setText((CharSequence)localObject2);
      this.d.setVisibility(0);
    }
    while (true)
    {
      if (this.e != null)
        this.e.setContentDescription(((c)localObject1).d());
      if ((i != 0) || (TextUtils.isEmpty(((c)localObject1).d())))
        break label397;
      setOnLongClickListener(this);
      return;
      if (this.e == null)
        break;
      this.e.setVisibility(8);
      this.e.setImageDrawable(null);
      break;
      label365: i = 0;
      break label209;
      label370: if (this.d != null)
      {
        this.d.setVisibility(8);
        this.d.setText(null);
      }
    }
    label397: setOnLongClickListener(null);
    setLongClickable(false);
  }

  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(c.class.getName());
  }

  public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14)
      paramAccessibilityNodeInfo.setClassName(c.class.getName());
  }

  public final boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = ((Context)localObject).getResources().getDisplayMetrics().widthPixels;
    localObject = Toast.makeText((Context)localObject, this.a.d(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }

  public final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.b.b > 0) && (getMeasuredWidth() > this.b.b))
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.b.b, 1073741824), paramInt2);
  }

  public final void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean);
    for (int i = 1; ; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean))
        sendAccessibilityEvent(4);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fa
 * JD-Core Version:    0.6.2
 */