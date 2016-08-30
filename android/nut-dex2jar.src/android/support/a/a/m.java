package android.support.a.a;

import android.content.res.TypedArray;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import org.xmlpull.v1.XmlPullParser;

final class m extends o
{
  int a = 0;
  float b = 0.0F;
  int c = 0;
  float d = 1.0F;
  int e;
  float f = 1.0F;
  float g = 0.0F;
  float h = 1.0F;
  float i = 0.0F;
  Paint.Cap j = Paint.Cap.BUTT;
  Paint.Join k = Paint.Join.MITER;
  float l = 4.0F;
  private int[] p;

  public m()
  {
  }

  public m(m paramm)
  {
    super(paramm);
    this.p = paramm.p;
    this.a = paramm.a;
    this.b = paramm.b;
    this.d = paramm.d;
    this.c = paramm.c;
    this.e = paramm.e;
    this.f = paramm.f;
    this.g = paramm.g;
    this.h = paramm.h;
    this.i = paramm.i;
    this.j = paramm.j;
    this.k = paramm.k;
    this.l = paramm.l;
  }

  final void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
  {
    this.p = null;
    if (!i.a(paramXmlPullParser, "pathData"))
      return;
    Object localObject = paramTypedArray.getString(0);
    if (localObject != null)
      this.n = ((String)localObject);
    localObject = paramTypedArray.getString(2);
    if (localObject != null)
      this.m = f.a((String)localObject);
    this.c = i.a(paramTypedArray, paramXmlPullParser, "fillColor", 1, this.c);
    this.f = i.a(paramTypedArray, paramXmlPullParser, "fillAlpha", 12, this.f);
    int m = i.a(paramTypedArray, paramXmlPullParser, "strokeLineCap", 8);
    localObject = this.j;
    switch (m)
    {
    default:
      this.j = ((Paint.Cap)localObject);
      m = i.a(paramTypedArray, paramXmlPullParser, "strokeLineJoin", 9);
      localObject = this.k;
      switch (m)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      this.k = ((Paint.Join)localObject);
      this.l = i.a(paramTypedArray, paramXmlPullParser, "strokeMiterLimit", 10, this.l);
      this.a = i.a(paramTypedArray, paramXmlPullParser, "strokeColor", 3, this.a);
      this.d = i.a(paramTypedArray, paramXmlPullParser, "strokeAlpha", 11, this.d);
      this.b = i.a(paramTypedArray, paramXmlPullParser, "strokeWidth", 4, this.b);
      this.h = i.a(paramTypedArray, paramXmlPullParser, "trimPathEnd", 6, this.h);
      this.i = i.a(paramTypedArray, paramXmlPullParser, "trimPathOffset", 7, this.i);
      this.g = i.a(paramTypedArray, paramXmlPullParser, "trimPathStart", 5, this.g);
      return;
      localObject = Paint.Cap.BUTT;
      break;
      localObject = Paint.Cap.ROUND;
      break;
      localObject = Paint.Cap.SQUARE;
      break;
      localObject = Paint.Join.MITER;
      continue;
      localObject = Paint.Join.ROUND;
      continue;
      localObject = Paint.Join.BEVEL;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.m
 * JD-Core Version:    0.6.2
 */