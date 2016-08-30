package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class cp extends ViewGroup.MarginLayoutParams
{
  public float g;
  public int h = -1;

  public cp(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.g = 0.0F;
  }

  public cp(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.LinearLayoutCompat_Layout);
    this.g = paramContext.getFloat(l.LinearLayoutCompat_Layout_android_layout_weight, 0.0F);
    this.h = paramContext.getInt(l.LinearLayoutCompat_Layout_android_layout_gravity, -1);
    paramContext.recycle();
  }

  public cp(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cp
 * JD-Core Version:    0.6.2
 */