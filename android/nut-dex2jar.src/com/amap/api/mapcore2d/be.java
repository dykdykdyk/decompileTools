package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Point;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.amap.api.maps2d.model.LatLng;

class be extends ViewGroup
{
  private ad a;

  public be(Context paramContext, ad paramad)
  {
    super(paramContext);
    this.a = paramad;
    setWillNotDraw(false);
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int j = paramInt5 & 0x7;
    int i = paramInt5 & 0x70;
    if (j == 5)
    {
      paramInt5 = paramInt3 - paramInt1;
      if (i != 80)
        break label77;
      paramInt3 = paramInt4 - paramInt2;
    }
    while (true)
    {
      paramView.layout(paramInt5, paramInt3, paramInt5 + paramInt1, paramInt3 + paramInt2);
      return;
      paramInt5 = paramInt3;
      if (j != 1)
        break;
      paramInt5 = paramInt3 - paramInt1 / 2;
      break;
      label77: paramInt3 = paramInt4;
      if (i == 16)
        paramInt3 = paramInt4 - paramInt2 / 2;
    }
  }

  private void a(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramView instanceof ListView))
    {
      View localView = (View)paramView.getParent();
      if (localView != null)
      {
        paramArrayOfInt[0] = localView.getWidth();
        paramArrayOfInt[1] = localView.getHeight();
      }
    }
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      paramView.measure(0, 0);
    if (paramInt1 == -2)
      paramArrayOfInt[0] = paramView.getMeasuredWidth();
    while (paramInt2 == -2)
    {
      paramArrayOfInt[1] = paramView.getMeasuredHeight();
      return;
      if (paramInt1 == -1)
        paramArrayOfInt[0] = getMeasuredWidth();
      else
        paramArrayOfInt[0] = paramInt1;
    }
    if (paramInt2 == -1)
    {
      paramArrayOfInt[1] = getMeasuredHeight();
      return;
    }
    paramArrayOfInt[1] = paramInt2;
  }

  private void a(View paramView, be.a parama)
  {
    int[] arrayOfInt = new int[2];
    a(paramView, parama.width, parama.height, arrayOfInt);
    a(paramView, arrayOfInt[0], arrayOfInt[1], parama.c, parama.d, parama.e);
  }

  private void a(cq paramcq, int[] paramArrayOfInt, int paramInt)
  {
    int i = paramcq.b();
    if (i == 1)
      a(paramcq, paramArrayOfInt[0], paramArrayOfInt[1], getWidth() - paramArrayOfInt[0], (getHeight() + paramArrayOfInt[1]) / 2, paramInt);
    while (i != 0)
      return;
    a(paramcq, paramArrayOfInt[0], paramArrayOfInt[1], getWidth() - paramArrayOfInt[0], getHeight(), paramInt);
  }

  private void b(View paramView, be.a parama)
  {
    int[] arrayOfInt = new int[2];
    a(paramView, parama.width, parama.height, arrayOfInt);
    if ((paramView instanceof cq))
      a((cq)paramView, arrayOfInt, parama.e);
    while (true)
    {
      return;
      if ((paramView instanceof av))
      {
        a(paramView, arrayOfInt[0], arrayOfInt[1], getWidth() - arrayOfInt[0], arrayOfInt[1], parama.e);
        return;
      }
      if ((paramView instanceof u))
      {
        a(paramView, arrayOfInt[0], arrayOfInt[1], 0, 0, parama.e);
        return;
      }
      if (parama.b == null)
        continue;
      Object localObject1 = new ab((int)(parama.b.latitude * 1000000.0D), (int)(parama.b.longitude * 1000000.0D));
      try
      {
        localObject1 = this.a.r().a((ab)localObject1, null);
        if (localObject1 == null)
          continue;
        ((Point)localObject1).x += parama.c;
        ((Point)localObject1).y += parama.d;
        a(paramView, arrayOfInt[0], arrayOfInt[1], ((Point)localObject1).x, ((Point)localObject1).y, parama.e);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
        {
          cz.a(localRemoteException, "MapOverlayViewGroup", "layoutMap");
          Object localObject2 = null;
        }
      }
    }
  }

  public void a()
  {
    onLayout(false, 0, 0, 0, 0);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt1 = 0;
    if (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      be.a locala;
      if (localView != null)
      {
        if (!(localView.getLayoutParams() instanceof be.a))
          break label79;
        locala = (be.a)localView.getLayoutParams();
        if (locala.a != 0)
          break label68;
        b(localView, locala);
      }
      while (true)
      {
        paramInt1 += 1;
        break;
        label68: a(localView, locala);
        continue;
        label79: a(localView, new be.a(localView.getLayoutParams()));
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.be
 * JD-Core Version:    0.6.2
 */