package com.facebook.widget;

import com.facebook.model.GraphObject;
import java.text.Collator;
import java.util.Comparator;

class GraphObjectAdapter$1
  implements Comparator<GraphObject>
{
  GraphObjectAdapter$1(GraphObjectAdapter paramGraphObjectAdapter, Collator paramCollator)
  {
  }

  public int compare(GraphObject paramGraphObject1, GraphObject paramGraphObject2)
  {
    return GraphObjectAdapter.access$100(paramGraphObject1, paramGraphObject2, GraphObjectAdapter.access$000(this.this$0), this.val$collator);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.GraphObjectAdapter.1
 * JD-Core Version:    0.6.2
 */