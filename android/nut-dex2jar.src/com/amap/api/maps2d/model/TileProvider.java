package com.amap.api.maps2d.model;

public abstract interface TileProvider
{
  public static final Tile NO_TILE = new Tile(-1, -1, null);

  public abstract Tile getTile(int paramInt1, int paramInt2, int paramInt3);

  public abstract int getTileHeight();

  public abstract int getTileWidth();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.TileProvider
 * JD-Core Version:    0.6.2
 */