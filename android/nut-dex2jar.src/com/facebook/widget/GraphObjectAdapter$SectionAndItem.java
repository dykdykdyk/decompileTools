package com.facebook.widget;

import com.facebook.model.GraphObject;

public class GraphObjectAdapter$SectionAndItem<T extends GraphObject>
{
  public T graphObject;
  public String sectionKey;

  public GraphObjectAdapter$SectionAndItem(String paramString, T paramT)
  {
    this.sectionKey = paramString;
    this.graphObject = paramT;
  }

  public GraphObjectAdapter.SectionAndItem.Type getType()
  {
    if (this.sectionKey == null)
      return GraphObjectAdapter.SectionAndItem.Type.ACTIVITY_CIRCLE;
    if (this.graphObject == null)
      return GraphObjectAdapter.SectionAndItem.Type.SECTION_HEADER;
    return GraphObjectAdapter.SectionAndItem.Type.GRAPH_OBJECT;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.GraphObjectAdapter.SectionAndItem
 * JD-Core Version:    0.6.2
 */