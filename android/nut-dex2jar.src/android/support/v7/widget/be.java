package android.support.v7.widget;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;

final class be extends ba
{
  private static final int[] c = { 16843074 };
  private final SeekBar d;

  be(SeekBar paramSeekBar, ao paramao)
  {
    super(paramSeekBar, paramao);
    this.d = paramSeekBar;
  }

  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    paramAttributeSet = ft.a(this.d.getContext(), paramAttributeSet, c, paramInt);
    Drawable localDrawable = paramAttributeSet.b(0);
    if (localDrawable != null)
      this.d.setThumb(localDrawable);
    paramAttributeSet.a.recycle();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.be
 * JD-Core Version:    0.6.2
 */