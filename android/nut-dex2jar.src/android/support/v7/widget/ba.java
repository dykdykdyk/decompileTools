package android.support.v7.widget;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.v4.c.a.k;
import android.util.AttributeSet;
import android.widget.ProgressBar;

class ba
{
  private static final int[] c = { 16843067, 16843068 };
  final ao a;
  Bitmap b;
  private final ProgressBar d;

  ba(ProgressBar paramProgressBar, ao paramao)
  {
    this.d = paramProgressBar;
    this.a = paramao;
  }

  private Drawable a(Drawable paramDrawable, boolean paramBoolean)
  {
    int j = 0;
    if ((paramDrawable instanceof k))
    {
      localObject1 = ((k)paramDrawable).a();
      if (localObject1 != null)
      {
        localObject1 = a((Drawable)localObject1, paramBoolean);
        ((k)paramDrawable).a((Drawable)localObject1);
      }
    }
    do
    {
      return paramDrawable;
      if ((paramDrawable instanceof LayerDrawable))
      {
        paramDrawable = (LayerDrawable)paramDrawable;
        int k = paramDrawable.getNumberOfLayers();
        localObject1 = new Drawable[k];
        int i = 0;
        if (i < k)
        {
          int m = paramDrawable.getId(i);
          localObject2 = paramDrawable.getDrawable(i);
          if ((m == 16908301) || (m == 16908303));
          for (paramBoolean = true; ; paramBoolean = false)
          {
            localObject1[i] = a((Drawable)localObject2, paramBoolean);
            i += 1;
            break;
          }
        }
        localObject1 = new LayerDrawable((Drawable[])localObject1);
        i = j;
        while (i < k)
        {
          ((LayerDrawable)localObject1).setId(i, paramDrawable.getId(i));
          i += 1;
        }
        return localObject1;
      }
    }
    while (!(paramDrawable instanceof BitmapDrawable));
    paramDrawable = (BitmapDrawable)paramDrawable;
    Object localObject2 = paramDrawable.getBitmap();
    if (this.b == null)
      this.b = ((Bitmap)localObject2);
    Object localObject1 = new ShapeDrawable(new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null));
    localObject2 = new BitmapShader((Bitmap)localObject2, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
    ((ShapeDrawable)localObject1).getPaint().setShader((Shader)localObject2);
    ((ShapeDrawable)localObject1).getPaint().setColorFilter(paramDrawable.getPaint().getColorFilter());
    if (paramBoolean)
      return new ClipDrawable((Drawable)localObject1, 3, 1);
    return localObject1;
  }

  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    ft localft = ft.a(this.d.getContext(), paramAttributeSet, c, paramInt);
    Object localObject = localft.b(0);
    if (localObject != null)
    {
      ProgressBar localProgressBar = this.d;
      paramAttributeSet = (AttributeSet)localObject;
      if ((localObject instanceof AnimationDrawable))
      {
        localObject = (AnimationDrawable)localObject;
        int i = ((AnimationDrawable)localObject).getNumberOfFrames();
        paramAttributeSet = new AnimationDrawable();
        paramAttributeSet.setOneShot(((AnimationDrawable)localObject).isOneShot());
        paramInt = 0;
        while (paramInt < i)
        {
          Drawable localDrawable = a(((AnimationDrawable)localObject).getFrame(paramInt), true);
          localDrawable.setLevel(10000);
          paramAttributeSet.addFrame(localDrawable, ((AnimationDrawable)localObject).getDuration(paramInt));
          paramInt += 1;
        }
        paramAttributeSet.setLevel(10000);
      }
      localProgressBar.setIndeterminateDrawable(paramAttributeSet);
    }
    paramAttributeSet = localft.b(1);
    if (paramAttributeSet != null)
      this.d.setProgressDrawable(a(paramAttributeSet, false));
    localft.a.recycle();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ba
 * JD-Core Version:    0.6.2
 */