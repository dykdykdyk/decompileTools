package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

public final class ba
{
  public boolean a;
  private final View b;
  private ViewParent c;
  private int[] d;

  public ba(View paramView)
  {
    this.b = paramView;
  }

  public final void a(boolean paramBoolean)
  {
    if (this.a)
      bl.w(this.b);
    this.a = paramBoolean;
  }

  public final boolean a()
  {
    return this.c != null;
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    if ((this.a) && (this.c != null))
      return cw.a(this.c, this.b, paramFloat1, paramFloat2);
    return false;
  }

  public final boolean a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((this.a) && (this.c != null))
      return cw.a(this.c, this.b, paramFloat1, paramFloat2, paramBoolean);
    return false;
  }

  public final boolean a(int paramInt)
  {
    if (a())
      return true;
    if (this.a)
    {
      ViewParent localViewParent = this.b.getParent();
      View localView = this.b;
      while (localViewParent != null)
      {
        if (cw.a(localViewParent, localView, this.b, paramInt))
        {
          this.c = localViewParent;
          cw.b(localViewParent, localView, this.b, paramInt);
          return true;
        }
        if ((localViewParent instanceof View))
          localView = (View)localViewParent;
        localViewParent = localViewParent.getParent();
      }
    }
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int j;
    int i;
    if (this.a)
    {
      bool1 = bool2;
      if (this.c != null)
      {
        if ((paramInt1 == 0) && (paramInt2 == 0) && (paramInt3 == 0) && (paramInt4 == 0))
          break label126;
        if (paramArrayOfInt == null)
          break label147;
        this.b.getLocationInWindow(paramArrayOfInt);
        j = paramArrayOfInt[0];
        i = paramArrayOfInt[1];
      }
    }
    while (true)
    {
      cw.a(this.c, this.b, paramInt1, paramInt2, paramInt3, paramInt4);
      if (paramArrayOfInt != null)
      {
        this.b.getLocationInWindow(paramArrayOfInt);
        paramArrayOfInt[0] -= j;
        paramArrayOfInt[1] -= i;
      }
      bool1 = true;
      label126: 
      do
      {
        return bool1;
        bool1 = bool2;
      }
      while (paramArrayOfInt == null);
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return false;
      label147: i = 0;
      j = 0;
    }
  }

  public final boolean a(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int j;
    int i;
    if (this.a)
    {
      bool1 = bool2;
      if (this.c != null)
      {
        if ((paramInt1 == 0) && (paramInt2 == 0))
          break label171;
        if (paramArrayOfInt2 == null)
          break label192;
        this.b.getLocationInWindow(paramArrayOfInt2);
        j = paramArrayOfInt2[0];
        i = paramArrayOfInt2[1];
      }
    }
    while (true)
    {
      int[] arrayOfInt = paramArrayOfInt1;
      if (paramArrayOfInt1 == null)
      {
        if (this.d == null)
          this.d = new int[2];
        arrayOfInt = this.d;
      }
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      cw.a(this.c, this.b, paramInt1, paramInt2, arrayOfInt);
      if (paramArrayOfInt2 != null)
      {
        this.b.getLocationInWindow(paramArrayOfInt2);
        paramArrayOfInt2[0] -= j;
        paramArrayOfInt2[1] -= i;
      }
      if (arrayOfInt[0] == 0)
      {
        bool1 = bool2;
        if (arrayOfInt[1] == 0);
      }
      else
      {
        bool1 = true;
      }
      label171: 
      do
      {
        return bool1;
        bool1 = bool2;
      }
      while (paramArrayOfInt2 == null);
      paramArrayOfInt2[0] = 0;
      paramArrayOfInt2[1] = 0;
      return false;
      label192: i = 0;
      j = 0;
    }
  }

  public final void b()
  {
    if (this.c != null)
    {
      cw.a(this.c, this.b);
      this.c = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ba
 * JD-Core Version:    0.6.2
 */