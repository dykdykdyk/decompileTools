package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class j extends BaseAdapter
  implements n, Filterable
{
  protected boolean a = false;
  protected boolean b = true;
  public Cursor c = null;
  public Context d;
  protected int e;
  protected k f;
  protected DataSetObserver g;
  protected m h;
  protected FilterQueryProvider i;

  public j(Context paramContext)
  {
    this.d = paramContext;
    this.e = -1;
    this.f = new k(this);
    this.g = new l(this, (byte)0);
  }

  public final Cursor a()
  {
    return this.c;
  }

  public Cursor a(CharSequence paramCharSequence)
  {
    if (this.i != null)
      return this.i.runQuery(paramCharSequence);
    return this.c;
  }

  public abstract View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  public void a(Cursor paramCursor)
  {
    if (paramCursor == this.c)
      paramCursor = null;
    while (true)
    {
      if (paramCursor != null)
        paramCursor.close();
      return;
      Cursor localCursor = this.c;
      if (localCursor != null)
      {
        if (this.f != null)
          localCursor.unregisterContentObserver(this.f);
        if (this.g != null)
          localCursor.unregisterDataSetObserver(this.g);
      }
      this.c = paramCursor;
      if (paramCursor != null)
      {
        if (this.f != null)
          paramCursor.registerContentObserver(this.f);
        if (this.g != null)
          paramCursor.registerDataSetObserver(this.g);
        this.e = paramCursor.getColumnIndexOrThrow("_id");
        this.a = true;
        notifyDataSetChanged();
        paramCursor = localCursor;
      }
      else
      {
        this.e = -1;
        this.a = false;
        notifyDataSetInvalidated();
        paramCursor = localCursor;
      }
    }
  }

  public abstract void a(View paramView, Cursor paramCursor);

  public View b(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return a(paramContext, paramCursor, paramViewGroup);
  }

  public CharSequence b(Cursor paramCursor)
  {
    if (paramCursor == null)
      return "";
    return paramCursor.toString();
  }

  protected final void b()
  {
    if ((this.b) && (this.c != null) && (!this.c.isClosed()))
      this.a = this.c.requery();
  }

  public int getCount()
  {
    if ((this.a) && (this.c != null))
      return this.c.getCount();
    return 0;
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.a)
    {
      this.c.moveToPosition(paramInt);
      View localView = paramView;
      if (paramView == null)
        localView = b(this.d, this.c, paramViewGroup);
      a(localView, this.c);
      return localView;
    }
    return null;
  }

  public Filter getFilter()
  {
    if (this.h == null)
      this.h = new m(this);
    return this.h;
  }

  public Object getItem(int paramInt)
  {
    if ((this.a) && (this.c != null))
    {
      this.c.moveToPosition(paramInt);
      return this.c;
    }
    return null;
  }

  public long getItemId(int paramInt)
  {
    long l2 = 0L;
    long l1 = l2;
    if (this.a)
    {
      l1 = l2;
      if (this.c != null)
      {
        l1 = l2;
        if (this.c.moveToPosition(paramInt))
          l1 = this.c.getLong(this.e);
      }
    }
    return l1;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.a)
      throw new IllegalStateException("this should only be called when the cursor is valid");
    if (!this.c.moveToPosition(paramInt))
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    View localView = paramView;
    if (paramView == null)
      localView = a(this.d, this.c, paramViewGroup);
    a(localView, this.c);
    return localView;
  }

  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.j
 * JD-Core Version:    0.6.2
 */