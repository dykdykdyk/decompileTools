package android.support.a.a;

import android.graphics.Path;

class o
{
  protected h[] m = null;
  String n;
  int o;

  public o()
  {
  }

  public o(o paramo)
  {
    this.n = paramo.n;
    this.o = paramo.o;
    this.m = f.a(paramo.m);
  }

  public final void a(Path paramPath)
  {
    paramPath.reset();
    h[] arrayOfh;
    float[] arrayOfFloat1;
    int k;
    int j;
    float[] arrayOfFloat2;
    float f4;
    float f3;
    float f6;
    float f1;
    float f2;
    int i1;
    float f7;
    float f8;
    label290: label482: float f9;
    if (this.m != null)
    {
      arrayOfh = this.m;
      arrayOfFloat1 = new float[6];
      k = 0;
      j = 109;
      if (k < arrayOfh.length)
      {
        int i2 = arrayOfh[k].a;
        arrayOfFloat2 = arrayOfh[k].b;
        f4 = arrayOfFloat1[0];
        f3 = arrayOfFloat1[1];
        f6 = arrayOfFloat1[2];
        f5 = arrayOfFloat1[3];
        f1 = arrayOfFloat1[4];
        f2 = arrayOfFloat1[5];
        int i;
        switch (i2)
        {
        default:
          i = 2;
          i1 = 0;
          f7 = f3;
          f3 = f4;
          f4 = f7;
          f7 = f6;
          f8 = f5;
          if (i1 < arrayOfFloat2.length)
            switch (i2)
            {
            default:
              f5 = f2;
              f2 = f4;
              f4 = f3;
              f3 = f2;
              f2 = f1;
              f6 = f7;
              f1 = f5;
              f5 = f8;
            case 109:
            case 77:
            case 108:
            case 76:
            case 104:
            case 72:
            case 118:
            case 86:
            case 99:
            case 67:
            case 115:
            case 83:
            case 113:
            case 81:
            case 116:
            case 84:
            case 97:
            case 65:
            }
          break;
        case 90:
        case 122:
        case 76:
        case 77:
        case 84:
        case 108:
        case 109:
        case 116:
        case 72:
        case 86:
        case 104:
        case 118:
        case 67:
        case 99:
        case 81:
        case 83:
        case 113:
        case 115:
        case 65:
        case 97:
          while (true)
          {
            i1 += i;
            f9 = f2;
            float f10 = f4;
            j = i2;
            f8 = f5;
            f7 = f6;
            f2 = f1;
            f1 = f9;
            f4 = f3;
            f3 = f10;
            break label290;
            paramPath.close();
            paramPath.moveTo(f1, f2);
            f5 = f2;
            f6 = f1;
            f3 = f2;
            f4 = f1;
            i = 2;
            break;
            i = 2;
            break;
            i = 1;
            break;
            i = 6;
            break;
            i = 4;
            break;
            i = 7;
            break;
            f3 += arrayOfFloat2[(i1 + 0)];
            f4 += arrayOfFloat2[(i1 + 1)];
            if (i1 > 0)
            {
              paramPath.rLineTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
              f9 = f3;
              f3 = f2;
              f2 = f1;
              f5 = f8;
              f1 = f3;
              f6 = f7;
              f3 = f4;
              f4 = f9;
            }
            else
            {
              paramPath.rMoveTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
              f10 = f4;
              f9 = f3;
              f5 = f8;
              f1 = f4;
              f6 = f7;
              f2 = f3;
              f3 = f10;
              f4 = f9;
              continue;
              f3 = arrayOfFloat2[(i1 + 0)];
              f4 = arrayOfFloat2[(i1 + 1)];
              if (i1 > 0)
              {
                paramPath.lineTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
                f9 = f3;
                f3 = f2;
                f2 = f1;
                f5 = f8;
                f1 = f3;
                f6 = f7;
                f3 = f4;
                f4 = f9;
              }
              else
              {
                paramPath.moveTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
                f10 = f4;
                f9 = f3;
                f5 = f8;
                f1 = f4;
                f6 = f7;
                f2 = f3;
                f3 = f10;
                f4 = f9;
                continue;
                paramPath.rLineTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
                f5 = arrayOfFloat2[(i1 + 0)];
                f4 += arrayOfFloat2[(i1 + 1)];
                f9 = f3 + f5;
                f3 = f2;
                f2 = f1;
                f5 = f8;
                f1 = f3;
                f6 = f7;
                f3 = f4;
                f4 = f9;
                continue;
                paramPath.lineTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
                f4 = arrayOfFloat2[(i1 + 0)];
                f9 = arrayOfFloat2[(i1 + 1)];
                f3 = f2;
                f2 = f1;
                f5 = f8;
                f1 = f3;
                f6 = f7;
                f3 = f9;
                continue;
                paramPath.rLineTo(arrayOfFloat2[(i1 + 0)], 0.0F);
                f5 = arrayOfFloat2[(i1 + 0)];
                f9 = f3 + f5;
                f3 = f1;
                f5 = f8;
                f1 = f2;
                f6 = f7;
                f2 = f3;
                f3 = f4;
                f4 = f9;
                continue;
                paramPath.lineTo(arrayOfFloat2[(i1 + 0)], f4);
                f5 = arrayOfFloat2[(i1 + 0)];
                f3 = f4;
                f4 = f5;
                f9 = f1;
                f5 = f8;
                f1 = f2;
                f6 = f7;
                f2 = f9;
                continue;
                paramPath.rLineTo(0.0F, arrayOfFloat2[(i1 + 0)]);
                f5 = arrayOfFloat2[(i1 + 0)];
                f9 = f1;
                f10 = f4 + f5;
                f4 = f3;
                f1 = f2;
                f5 = f8;
                f6 = f7;
                f2 = f9;
                f3 = f10;
                continue;
                paramPath.lineTo(f3, arrayOfFloat2[(i1 + 0)]);
                f9 = arrayOfFloat2[(i1 + 0)];
                f4 = f1;
                f10 = f3;
                f1 = f2;
                f5 = f8;
                f6 = f7;
                f2 = f4;
                f3 = f9;
                f4 = f10;
                continue;
                paramPath.rCubicTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)], arrayOfFloat2[(i1 + 2)], arrayOfFloat2[(i1 + 3)], arrayOfFloat2[(i1 + 4)], arrayOfFloat2[(i1 + 5)]);
                f6 = f3 + arrayOfFloat2[(i1 + 2)];
                f5 = f4 + arrayOfFloat2[(i1 + 3)];
                f7 = arrayOfFloat2[(i1 + 4)];
                f4 += arrayOfFloat2[(i1 + 5)];
                f7 = f3 + f7;
                f3 = f2;
                f2 = f1;
                f1 = f3;
                f3 = f4;
                f4 = f7;
                continue;
                paramPath.cubicTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)], arrayOfFloat2[(i1 + 2)], arrayOfFloat2[(i1 + 3)], arrayOfFloat2[(i1 + 4)], arrayOfFloat2[(i1 + 5)]);
                f4 = arrayOfFloat2[(i1 + 4)];
                f3 = arrayOfFloat2[(i1 + 5)];
                f7 = arrayOfFloat2[(i1 + 2)];
                f5 = arrayOfFloat2[(i1 + 3)];
                f6 = f2;
                f2 = f1;
                f1 = f6;
                f6 = f7;
              }
            }
          }
          f6 = 0.0F;
          if ((j == 99) || (j == 115) || (j == 67) || (j == 83))
            f6 = f4 - f8;
          break;
        }
      }
    }
    for (float f5 = f3 - f7; ; f5 = 0.0F)
    {
      paramPath.rCubicTo(f5, f6, arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)], arrayOfFloat2[(i1 + 2)], arrayOfFloat2[(i1 + 3)]);
      f6 = f3 + arrayOfFloat2[(i1 + 0)];
      f5 = f4 + arrayOfFloat2[(i1 + 1)];
      f7 = arrayOfFloat2[(i1 + 2)];
      f4 += arrayOfFloat2[(i1 + 3)];
      f7 = f3 + f7;
      f3 = f2;
      f2 = f1;
      f1 = f3;
      f3 = f4;
      f4 = f7;
      break label482;
      if ((j == 99) || (j == 115) || (j == 67) || (j == 83))
      {
        f4 = 2.0F * f4 - f8;
        f3 = 2.0F * f3 - f7;
      }
      while (true)
      {
        paramPath.cubicTo(f3, f4, arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)], arrayOfFloat2[(i1 + 2)], arrayOfFloat2[(i1 + 3)]);
        f6 = arrayOfFloat2[(i1 + 0)];
        f5 = arrayOfFloat2[(i1 + 1)];
        f4 = arrayOfFloat2[(i1 + 2)];
        f7 = arrayOfFloat2[(i1 + 3)];
        f3 = f2;
        f2 = f1;
        f1 = f3;
        f3 = f7;
        break label482;
        paramPath.rQuadTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)], arrayOfFloat2[(i1 + 2)], arrayOfFloat2[(i1 + 3)]);
        f6 = f3 + arrayOfFloat2[(i1 + 0)];
        f5 = f4 + arrayOfFloat2[(i1 + 1)];
        f7 = arrayOfFloat2[(i1 + 2)];
        f4 += arrayOfFloat2[(i1 + 3)];
        f7 = f3 + f7;
        f3 = f2;
        f2 = f1;
        f1 = f3;
        f3 = f4;
        f4 = f7;
        break label482;
        paramPath.quadTo(arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)], arrayOfFloat2[(i1 + 2)], arrayOfFloat2[(i1 + 3)]);
        f6 = arrayOfFloat2[(i1 + 0)];
        f5 = arrayOfFloat2[(i1 + 1)];
        f4 = arrayOfFloat2[(i1 + 2)];
        f7 = arrayOfFloat2[(i1 + 3)];
        f3 = f2;
        f2 = f1;
        f1 = f3;
        f3 = f7;
        break label482;
        if ((j == 113) || (j == 116) || (j == 81) || (j == 84))
          f5 = f4 - f8;
        for (f6 = f3 - f7; ; f6 = 0.0F)
        {
          paramPath.rQuadTo(f6, f5, arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
          f6 = f3 + f6;
          f5 = f4 + f5;
          f7 = arrayOfFloat2[(i1 + 0)];
          f4 += arrayOfFloat2[(i1 + 1)];
          f7 = f3 + f7;
          f3 = f2;
          f2 = f1;
          f1 = f3;
          f3 = f4;
          f4 = f7;
          break label482;
          if ((j != 113) && (j != 116) && (j != 81))
          {
            f6 = f4;
            f5 = f3;
            if (j != 84);
          }
          else
          {
            f5 = 2.0F * f3 - f7;
            f6 = 2.0F * f4 - f8;
          }
          paramPath.quadTo(f5, f6, arrayOfFloat2[(i1 + 0)], arrayOfFloat2[(i1 + 1)]);
          f4 = arrayOfFloat2[(i1 + 0)];
          f3 = arrayOfFloat2[(i1 + 1)];
          f7 = f6;
          f6 = f5;
          f8 = f2;
          f2 = f1;
          f5 = f7;
          f1 = f8;
          break label482;
          f5 = arrayOfFloat2[(i1 + 5)];
          f6 = arrayOfFloat2[(i1 + 6)];
          f7 = arrayOfFloat2[(i1 + 0)];
          f8 = arrayOfFloat2[(i1 + 1)];
          f9 = arrayOfFloat2[(i1 + 2)];
          boolean bool1;
          if (arrayOfFloat2[(i1 + 3)] != 0.0F)
          {
            bool1 = true;
            label2168: if (arrayOfFloat2[(i1 + 4)] == 0.0F)
              break label2261;
          }
          label2261: for (boolean bool2 = true; ; bool2 = false)
          {
            h.a(paramPath, f3, f4, f5 + f3, f6 + f4, f7, f8, f9, bool1, bool2);
            f6 = f3 + arrayOfFloat2[(i1 + 5)];
            f5 = f4 + arrayOfFloat2[(i1 + 6)];
            f7 = f2;
            f2 = f1;
            f3 = f5;
            f4 = f6;
            f1 = f7;
            break;
            bool1 = false;
            break label2168;
          }
          f5 = arrayOfFloat2[(i1 + 5)];
          f6 = arrayOfFloat2[(i1 + 6)];
          f7 = arrayOfFloat2[(i1 + 0)];
          f8 = arrayOfFloat2[(i1 + 1)];
          f9 = arrayOfFloat2[(i1 + 2)];
          if (arrayOfFloat2[(i1 + 3)] != 0.0F)
          {
            bool1 = true;
            label2328: if (arrayOfFloat2[(i1 + 4)] == 0.0F)
              break label2409;
          }
          label2409: for (bool2 = true; ; bool2 = false)
          {
            h.a(paramPath, f3, f4, f5, f6, f7, f8, f9, bool1, bool2);
            f6 = arrayOfFloat2[(i1 + 5)];
            f5 = arrayOfFloat2[(i1 + 6)];
            f7 = f2;
            f2 = f1;
            f3 = f5;
            f4 = f6;
            f1 = f7;
            break;
            bool1 = false;
            break label2328;
          }
          arrayOfFloat1[0] = f3;
          arrayOfFloat1[1] = f4;
          arrayOfFloat1[2] = f7;
          arrayOfFloat1[3] = f8;
          arrayOfFloat1[4] = f1;
          arrayOfFloat1[5] = f2;
          j = arrayOfh[k].a;
          k += 1;
          break;
          return;
          f5 = 0.0F;
        }
      }
    }
  }

  public boolean a()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.o
 * JD-Core Version:    0.6.2
 */