package u.aly;

import java.util.BitSet;

public final class dv extends dl
{
  public final void a(BitSet paramBitSet, int paramInt)
    throws bv
  {
    int i = 0;
    byte[] arrayOfByte = new byte[(int)Math.ceil(paramInt / 8.0D)];
    paramInt = 0;
    while (paramInt < paramBitSet.length())
    {
      if (paramBitSet.get(paramInt))
      {
        j = arrayOfByte.length - paramInt / 8 - 1;
        arrayOfByte[j] = ((byte)(arrayOfByte[j] | 1 << paramInt % 8));
      }
      paramInt += 1;
    }
    int j = arrayOfByte.length;
    paramInt = i;
    while (paramInt < j)
    {
      a(arrayOfByte[paramInt]);
      paramInt += 1;
    }
  }

  public final BitSet b(int paramInt)
    throws bv
  {
    int i = 0;
    int j = (int)Math.ceil(paramInt / 8.0D);
    byte[] arrayOfByte = new byte[j];
    paramInt = 0;
    while (paramInt < j)
    {
      arrayOfByte[paramInt] = k();
      paramInt += 1;
    }
    BitSet localBitSet = new BitSet();
    paramInt = i;
    while (paramInt < arrayOfByte.length * 8)
    {
      if ((arrayOfByte[(arrayOfByte.length - paramInt / 8 - 1)] & 1 << paramInt % 8) > 0)
        localBitSet.set(paramInt);
      paramInt += 1;
    }
    return localBitSet;
  }

  public final Class<? extends dw> s()
  {
    return dz.class;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.dv
 * JD-Core Version:    0.6.2
 */