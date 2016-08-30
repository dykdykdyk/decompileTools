package android.support.v7.a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ListView;

public final class l extends CursorAdapter
{
  private final int d;
  private final int e;

  public l(j paramj, Context paramContext, Cursor paramCursor, ListView paramListView, d paramd)
  {
    super(paramContext, paramCursor, false);
    paramj = getCursor();
    this.d = paramj.getColumnIndexOrThrow(this.c.I);
    this.e = paramj.getColumnIndexOrThrow(this.c.J);
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((CheckedTextView)paramView.findViewById(16908308)).setText(paramCursor.getString(this.d));
    paramView = this.a;
    int i = paramCursor.getPosition();
    if (paramCursor.getInt(this.e) == 1);
    for (boolean bool = true; ; bool = false)
    {
      paramView.setItemChecked(i, bool);
      return;
    }
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.c.b.inflate(this.b.I, paramViewGroup, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.l
 * JD-Core Version:    0.6.2
 */