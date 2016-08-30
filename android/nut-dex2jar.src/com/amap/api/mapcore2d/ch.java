package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.amap.api.maps2d.AMapException;
import com.amap.api.maps2d.model.Tile;
import com.amap.api.maps2d.model.TileProvider;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

class ch extends bu<ArrayList<cc>, ArrayList<cc>>
{
  private Context e;
  private at f = null;
  private TileProvider g;

  public ch(Context paramContext, ArrayList<cc> paramArrayList, TileProvider paramTileProvider)
  {
    super(paramArrayList);
    this.e = paramContext;
    this.g = paramTileProvider;
    a(dh.a(this.e));
    a(5000);
    b(50000);
  }

  private void a(cc paramcc, int paramInt)
  {
    if ((paramcc == null) || (paramInt < 0));
    while (true)
    {
      return;
      if ((this.f != null) && (this.f.p != null))
      {
        bx localbx = this.f.p;
        int j = localbx.size();
        int i = 0;
        while (i < j)
        {
          cc localcc = (cc)localbx.get(i);
          if ((localcc != null) && (localcc.equals(paramcc)))
          {
            localcc.g = paramInt;
            return;
          }
          i += 1;
        }
      }
    }
  }

  private byte[] a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  public int a(byte[] paramArrayOfByte, cc paramcc)
  {
    int i;
    if ((paramcc == null) || (paramArrayOfByte == null))
      i = -1;
    int j;
    do
    {
      do
      {
        do
        {
          do
          {
            return i;
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append(paramcc.b);
            localStringBuilder.append("-");
            localStringBuilder.append(paramcc.c);
            localStringBuilder.append("-");
            localStringBuilder.append(paramcc.d);
            if ((this.f == null) || (this.f.n == null))
              return -1;
            j = this.f.n.a(null, paramArrayOfByte, false, null, localStringBuilder.toString());
            if (j < 0)
              return -1;
            a(paramcc, j);
            i = j;
          }
          while (this.f == null);
          i = j;
        }
        while (this.f.f != true);
        paramArrayOfByte = a(this.f.n.a(j));
        i = j;
      }
      while (this.f == null);
      i = j;
    }
    while (this.f.o == null);
    this.f.o.a(paramArrayOfByte, paramcc.b, paramcc.c, paramcc.d);
    return j;
  }

  public void a(at paramat)
  {
    this.f = paramat;
  }

  protected ArrayList<cc> b(byte[] paramArrayOfByte)
    throws AMapException
  {
    cc localcc = null;
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (this.a != null)
    {
      if (paramArrayOfByte == null)
        localObject2 = localObject1;
    }
    else
      return localObject2;
    int j = ((ArrayList)this.a).size();
    int i = 0;
    for (localObject1 = localcc; ; localObject1 = localObject2)
    {
      localObject2 = localObject1;
      if (i >= j)
        break;
      localcc = (cc)((ArrayList)this.a).get(i);
      localObject2 = localObject1;
      if (a(paramArrayOfByte, localcc) < 0)
      {
        localObject2 = localObject1;
        if (localObject1 == null)
          localObject2 = new ArrayList();
        localObject1 = new cc(localcc);
        if ((this.f.h) && (((cc)localObject1).d > 9) && (!cy.a(((cc)localObject1).b, ((cc)localObject1).c, ((cc)localObject1).d)))
          ((cc)localObject1).h = true;
        ((ArrayList)localObject2).add(localObject1);
      }
      i += 1;
    }
  }

  public Map<String, String> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "AMAP_SDK_Android_2DMap_2.8.0");
    localHashMap.put("Accept-Encoding", "gzip");
    localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { "2.8.0", "2dmap" }));
    localHashMap.put("X-INFO", dd.a(this.e, v.a(true), null));
    localHashMap.put("logversion", "2.1");
    return localHashMap;
  }

  public Map<String, String> c()
  {
    return null;
  }

  public String d()
  {
    if (((cc)((ArrayList)this.a).get(0)).h)
      return String.format(bh.a().d(), new Object[] { Integer.valueOf(((cc)((ArrayList)this.a).get(0)).b), Integer.valueOf(((cc)((ArrayList)this.a).get(0)).c), Integer.valueOf(((cc)((ArrayList)this.a).get(0)).d) });
    return this.f.j.a(((cc)((ArrayList)this.a).get(0)).b, ((cc)((ArrayList)this.a).get(0)).c, ((cc)((ArrayList)this.a).get(0)).d);
  }

  protected byte[] e()
    throws AMapException
  {
    if (this.g != null)
      return this.g.getTile(((cc)((ArrayList)this.a).get(0)).b, ((cc)((ArrayList)this.a).get(0)).c, ((cc)((ArrayList)this.a).get(0)).d).data;
    return super.e();
  }

  protected ArrayList<cc> g()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((ArrayList)this.a).iterator();
    while (localIterator.hasNext())
      localArrayList.add(new cc((cc)localIterator.next()));
    return localArrayList;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ch
 * JD-Core Version:    0.6.2
 */