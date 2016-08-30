package com.nut.blehunter.ui;

import android.animation.ValueAnimator;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.d.o;

public class BindAnimationPaperActivity extends b
  implements View.OnClickListener
{
  private ValueAnimator m;

  protected final int m()
  {
    return 2130837974;
  }

  public void onBackPressed()
  {
    setResult(0);
    finish();
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558532:
    }
    setResult(-1);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i();
    setContentView(2130903072);
    b(2131099735);
    findViewById(2131558532).setOnClickListener(this);
    paramBundle = findViewById(2131558530);
    this.m = ValueAnimator.ofFloat(new float[] { 0.0F, o.a(this, 200.0F) });
    this.m.setDuration(3000L);
    this.m.setRepeatCount(-1);
    this.m.addUpdateListener(new i(this, paramBundle));
    this.m.start();
  }

  protected void onPause()
  {
    super.onPause();
    this.m.cancel();
  }

  protected void onResume()
  {
    super.onResume();
    this.m.start();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.BindAnimationPaperActivity
 * JD-Core Version:    0.6.2
 */