package com.nut.blehunter.ui;

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.a.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import com.nut.blehunter.ui.a.g;
import java.util.ArrayList;
import java.util.List;

public class GuidePagerActivity extends s
{
  private final int m = 12;
  private List<View> n = new ArrayList();
  private ImageView o;
  private int p;
  private int q = 0;

  public static String f()
  {
    return GuidePagerActivity.class.getSimpleName() + "2";
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903081);
    paramBundle = LayoutInflater.from(this).inflate(2130903141, null);
    Object localObject = LayoutInflater.from(this).inflate(2130903142, null);
    View localView1 = LayoutInflater.from(this).inflate(2130903143, null);
    View localView2 = LayoutInflater.from(this).inflate(2130903144, null);
    View localView3 = LayoutInflater.from(this).inflate(2130903145, null);
    this.n.add(paramBundle);
    this.n.add(localObject);
    this.n.add(localView1);
    this.n.add(localView2);
    this.n.add(localView3);
    this.o = ((ImageView)findViewById(2131558578));
    this.o.getViewTreeObserver().addOnPreDrawListener(new al(this));
    paramBundle = new g(this.n);
    localObject = (ViewPager)findViewById(2131558570);
    ((ViewPager)localObject).setAdapter(paramBundle);
    ((ViewPager)localObject).setOnPageChangeListener(new am(this));
    ((Button)findViewById(2131558571)).setOnClickListener(new an(this));
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.GuidePagerActivity
 * JD-Core Version:    0.6.2
 */