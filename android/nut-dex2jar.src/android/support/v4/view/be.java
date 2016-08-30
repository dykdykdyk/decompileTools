package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

public abstract class be
{
  public final DataSetObservable a = new DataSetObservable();
  private DataSetObserver b;

  public abstract int a();

  public CharSequence a(int paramInt)
  {
    return null;
  }

  public Object a(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }

  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    return a(paramViewGroup, paramInt);
  }

  public final void a(DataSetObserver paramDataSetObserver)
  {
    this.a.registerObserver(paramDataSetObserver);
  }

  public abstract boolean a(View paramView, Object paramObject);

  final void b(DataSetObserver paramDataSetObserver)
  {
    try
    {
      this.b = paramDataSetObserver;
      return;
    }
    finally
    {
    }
    throw paramDataSetObserver;
  }

  public void b(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }

  public void b(ViewGroup paramViewGroup, int paramInt)
  {
    b(paramViewGroup, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.be
 * JD-Core Version:    0.6.2
 */