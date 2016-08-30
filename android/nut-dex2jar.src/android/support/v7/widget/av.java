package android.support.v7.widget;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.widget.ImageView;

public final class av
{
  private final ImageView a;
  private final ao b;

  public av(ImageView paramImageView, ao paramao)
  {
    this.a = paramImageView;
    this.b = paramao;
  }

  public final void a(int paramInt)
  {
    if (paramInt != 0)
    {
      if (this.b != null);
      for (Drawable localDrawable = this.b.a(this.a.getContext(), paramInt, false); ; localDrawable = a.a(this.a.getContext(), paramInt))
      {
        if (localDrawable != null)
          ch.a(localDrawable);
        this.a.setImageDrawable(localDrawable);
        return;
      }
    }
    this.a.setImageDrawable(null);
  }

  public final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = ft.a(this.a.getContext(), paramAttributeSet, l.AppCompatImageView, paramInt);
    try
    {
      Drawable localDrawable = paramAttributeSet.b(l.AppCompatImageView_android_src);
      if (localDrawable != null)
        this.a.setImageDrawable(localDrawable);
      paramInt = paramAttributeSet.e(l.AppCompatImageView_srcCompat, -1);
      if (paramInt != -1)
      {
        localDrawable = this.b.a(this.a.getContext(), paramInt, false);
        if (localDrawable != null)
          this.a.setImageDrawable(localDrawable);
      }
      localDrawable = this.a.getDrawable();
      if (localDrawable != null)
        ch.a(localDrawable);
      return;
    }
    finally
    {
      paramAttributeSet.a.recycle();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.av
 * JD-Core Version:    0.6.2
 */