package android.support.v7.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class b extends ViewGroup.MarginLayoutParams
{
  public int a = 0;

  public b()
  {
    super(-2, -2);
    this.a = 8388627;
  }

  public b(byte paramByte)
  {
    super(-2, -2);
    this.a = 17;
  }

  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.ActionBarLayout);
    this.a = paramContext.getInt(l.ActionBarLayout_android_layout_gravity, 0);
    paramContext.recycle();
  }

  public b(b paramb)
  {
    super(paramb);
    this.a = paramb.a;
  }

  public b(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.b
 * JD-Core Version:    0.6.2
 */