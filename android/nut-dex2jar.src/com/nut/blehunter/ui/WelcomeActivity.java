package com.nut.blehunter.ui;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;

public class WelcomeActivity extends Activity
{
  private SparseArray<WeakReference<Drawable>> a = new SparseArray();
  private Handler b;

  private void a(int paramInt1, int paramInt2)
  {
    View localView = findViewById(paramInt1);
    Object localObject = (WeakReference)this.a.get(paramInt2);
    if (localObject != null)
      localObject = (Drawable)((WeakReference)localObject).get();
    while (true)
    {
      localView.setBackground((Drawable)localObject);
      return;
      localObject = new BitmapFactory.Options();
      localObject = BitmapFactory.decodeResource(getResources(), paramInt2, (BitmapFactory.Options)localObject);
      if ((localObject != null) && (!((Bitmap)localObject).isRecycled()))
      {
        localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
        this.a.put(paramInt2, new WeakReference(localObject));
      }
      else
      {
        localObject = null;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903108);
    a(2131558720, 2130838058);
    a(2131558722, 2130838059);
    this.b = new Handler();
    this.b.postDelayed(new ex(this), 1000L);
  }

  protected void onDestroy()
  {
    if (this.a != null)
    {
      int i = 0;
      while (i < this.a.size())
      {
        int j = this.a.keyAt(i);
        Drawable localDrawable = (Drawable)((WeakReference)this.a.get(j)).get();
        localDrawable.setCallback(null);
        if ((localDrawable instanceof BitmapDrawable))
          ((BitmapDrawable)localDrawable).getBitmap().recycle();
        i += 1;
      }
      this.a.clear();
    }
    super.onDestroy();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.WelcomeActivity
 * JD-Core Version:    0.6.2
 */