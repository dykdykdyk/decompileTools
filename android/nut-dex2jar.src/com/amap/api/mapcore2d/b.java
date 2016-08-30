package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PathEffect;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.amap.api.maps2d.AMap.CancelableCallback;
import com.amap.api.maps2d.AMap.InfoWindowAdapter;
import com.amap.api.maps2d.AMap.OnCacheRemoveListener;
import com.amap.api.maps2d.AMap.OnCameraChangeListener;
import com.amap.api.maps2d.AMap.OnInfoWindowClickListener;
import com.amap.api.maps2d.AMap.OnMapClickListener;
import com.amap.api.maps2d.AMap.OnMapLoadedListener;
import com.amap.api.maps2d.AMap.OnMapLongClickListener;
import com.amap.api.maps2d.AMap.OnMapScreenShotListener;
import com.amap.api.maps2d.AMap.OnMapTouchListener;
import com.amap.api.maps2d.AMap.OnMarkerClickListener;
import com.amap.api.maps2d.AMap.OnMarkerDragListener;
import com.amap.api.maps2d.AMap.OnMyLocationChangeListener;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.CameraPosition.Builder;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.maps2d.model.Text;
import com.amap.api.maps2d.model.TextOptions;
import com.amap.api.maps2d.model.TileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

class b extends View
  implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener, ad, bn.b, bw.a, q.a, s.a
{
  private static int aB = Color.rgb(222, 215, 214);
  private static Paint aC = null;
  private static Bitmap aD = null;
  private bv A;
  private LocationSource B;
  private u C;
  private a D = null;
  private boolean E = false;
  private boolean F = false;
  private AMap.OnCameraChangeListener G;
  private p H;
  private AMap.CancelableCallback I = null;
  private bf J;
  private boolean K = false;
  private boolean L = false;
  private View M;
  private AMap.OnInfoWindowClickListener N;
  private AMap.InfoWindowAdapter O;
  private bi P;
  private AMap.OnMarkerClickListener Q;
  private Drawable R = null;
  private an S;
  private boolean T = false;
  private boolean U = false;
  private boolean V = false;
  private AMap.OnMarkerDragListener W;
  private AMap.OnMapTouchListener Z;
  bk a;
  private int aA = 0;
  private int aE = 0;
  private boolean aF = false;
  private b.a aG = null;
  private Thread aH = new f(this);
  private AMap.OnMapLongClickListener aa;
  private AMap.OnMapLoadedListener ab;
  private AMap.OnMapClickListener ac;
  private boolean ad = false;
  private AMap.OnMapScreenShotListener ae = null;
  private Timer af = null;
  private TimerTask ag = new c(this);
  private Handler ah = new Handler();
  private Handler ai = new d(this);
  private Point aj;
  private GestureDetector ak;
  private bn.a al;
  private ArrayList<GestureDetector.OnGestureListener> am = new ArrayList();
  private ArrayList<bn.b> an = new ArrayList();
  private Scroller ao;
  private int ap = 0;
  private int aq = 0;
  private Matrix ar = new Matrix();
  private float as = 1.0F;
  private boolean at = false;
  private float au;
  private float av;
  private int aw;
  private int ax;
  private long ay = 0L;
  private int az = 0;
  public ay b;
  float[] c = new float[2];
  boolean d = false;
  bb e = new bb(this);
  cq f;
  public be g;
  protected ar h;
  public ce i;
  public bc j;
  final Handler k = new e(this);
  private Context l;
  private boolean m = false;
  private boolean n = true;
  private Marker o;
  private ah p;
  private final int[] q = { 10000000, 5000000, 2000000, 1000000, 500000, 200000, 100000, 50000, 30000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100, 50, 25, 10, 5 };
  private boolean r = true;
  private int s = 1;
  private av t;
  private Location u;
  private g v;
  private AMap.OnMyLocationChangeListener w;
  private boolean x = true;
  private bo y;
  private cp z;

  public b(Context paramContext)
  {
    super(paramContext);
    T();
    setClickable(true);
    a(paramContext, null);
  }

  public b(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    a(paramContext, paramAttributeSet);
  }

  private b(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    T();
    this.l = paramContext;
    paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16843281 }).getString(0);
    a(paramContext, paramAttributeSet);
  }

  public static int G()
  {
    return aB;
  }

  public static Paint H()
  {
    try
    {
      if (aC == null)
      {
        localObject1 = new Paint();
        aC = (Paint)localObject1;
        ((Paint)localObject1).setColor(-7829368);
        aC.setAlpha(90);
        localObject1 = new DashPathEffect(new float[] { 2.0F, 2.5F }, 1.0F);
        aC.setPathEffect((PathEffect)localObject1);
      }
      Object localObject1 = aC;
      return localObject1;
    }
    finally
    {
    }
  }

  private void T()
  {
    Method[] arrayOfMethod = View.class.getMethods();
    int i2 = arrayOfMethod.length;
    int i1 = 0;
    Method localMethod;
    if (i1 < i2)
    {
      localMethod = arrayOfMethod[i1];
      if (!localMethod.getName().equals("setLayerType"));
    }
    while (true)
    {
      while (true)
      {
        if (localMethod != null);
        try
        {
          localMethod.invoke(this, new Object[] { Integer.valueOf(View.class.getField("LAYER_TYPE_SOFTWARE").getInt(null)), null });
          return;
          i1 += 1;
        }
        catch (Exception localException)
        {
          cz.a(localException, "AMapDelegateImpGLSurfaceView", "setLayerType");
          return;
        }
      }
      Object localObject = null;
    }
  }

  private void U()
  {
    a(this.l);
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    this.g.addView(this, 0, localLayoutParams);
  }

  private void V()
  {
    this.a.a();
    if (this.b != null)
    {
      this.b.a(true);
      this.b.e();
    }
    this.b = null;
    this.a = null;
  }

  private void W()
  {
    if (this.K)
      this.K = false;
    r localr;
    if (this.V)
    {
      this.V = false;
      localr = r.a();
      localr.i = true;
      this.e.a(localr);
    }
    if (this.L)
    {
      this.L = false;
      localr = r.a();
      localr.i = true;
      this.e.a(localr);
    }
    this.U = false;
    if ((this.W != null) && (this.o != null))
    {
      this.W.onMarkerDragEnd(this.o);
      this.o = null;
      this.p = null;
    }
  }

  private void X()
  {
    if (this.aj == null)
      return;
    int i1 = this.aj.x;
    int i2 = this.az;
    int i3 = this.aj.y;
    int i4 = this.aA;
    this.aj.x = this.az;
    this.aj.y = this.aA;
    this.b.b(i1 - i2, i3 - i4);
  }

  private CameraPosition Y()
  {
    ab localab = B();
    if (localab == null)
      return null;
    return CameraPosition.fromLatLngZoom(new LatLng(localab.b() / 1000000.0D, localab.a() / 1000000.0D), e());
  }

  private void Z()
  {
    if (this.A == null)
      return;
    int i1 = getWidth();
    Object localObject = new x();
    x localx = new x();
    a(0, 0, (x)localObject);
    a(i1, 0, localx);
    cz.a(new LatLng(((x)localObject).b, ((x)localObject).a), new LatLng(localx.b, localx.a));
    i1 = (int)e();
    i1 = this.q[i1] * this.a.i.b / this.a.i.a;
    int i2 = this.a.i.b / 4;
    localObject = cz.a(i1);
    this.A.a(i2);
    this.A.a((String)localObject);
    this.A.invalidate();
  }

  private LatLng a(LatLng paramLatLng)
  {
    ak localak = new ak();
    b(paramLatLng.latitude, paramLatLng.longitude, localak);
    localak.b -= 60;
    paramLatLng = new x();
    a(localak.a, localak.b, paramLatLng);
    return new LatLng(paramLatLng.b, paramLatLng.a);
  }

  private void a(float paramFloat1, PointF paramPointF, float paramFloat2, float paramFloat3)
  {
    try
    {
      boolean bool = this.h.f();
      if (!bool)
        return;
    }
    catch (RemoteException paramPointF)
    {
      int i1;
      int i2;
      do
      {
        do
        {
          cz.a(paramPointF, "AMapDelegateImpGLSurfaceView", "doScale");
          this.aE = 2;
          i1 = this.a.c.c() / 2;
          i2 = this.a.c.d() / 2;
          paramFloat1 = a((float)(Math.log(paramFloat1) / Math.log(2.0D) + this.a.c.e()));
        }
        while (paramFloat1 == this.a.c.e());
        this.c[0] = this.c[1];
        this.c[1] = paramFloat1;
      }
      while (this.c[0] == this.c[1]);
      paramPointF = this.a.b.a(i1, i2);
      this.a.c.a(paramFloat1);
      this.a.c.a(paramPointF);
      Z();
    }
  }

  private void a(int paramInt1, int paramInt2)
  {
    if (this.aj == null)
      return;
    this.az = paramInt1;
    this.aA = paramInt2;
    X();
  }

  private void a(int paramInt1, int paramInt2, ak paramak)
  {
    e();
    Object localObject = new PointF(paramInt1, paramInt2);
    localObject = this.J.a((PointF)localObject, this.J.l, this.J.n, this.J.k, this.J.o);
    if (paramak != null)
    {
      paramak.a = ((int)((ab)localObject).e());
      paramak.b = ((int)((ab)localObject).f());
    }
  }

  private void a(Context paramContext)
  {
    this.aj = null;
    this.ak = new GestureDetector(this);
    this.al = bn.a(paramContext, this);
    this.ao = new Scroller(paramContext);
    new DisplayMetrics();
    paramContext = paramContext.getApplicationContext().getResources().getDisplayMetrics();
    this.aw = paramContext.widthPixels;
    this.ax = paramContext.heightPixels;
    this.ap = (paramContext.widthPixels / 2);
    this.aq = (paramContext.heightPixels / 2);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    v.b = db.c(paramContext);
    this.l = paramContext;
    this.S = new bt(this);
    setBackgroundColor(Color.rgb(222, 215, 214));
    s.a().a(this);
    bw.a().a(this);
    q.a().a(this);
    this.D = new a(this);
    this.v = new g(this);
    this.H = new p(paramContext);
    this.i = new ce(this.l, this);
    this.a = new bk(this.l, this, v.i);
    this.i.a(true);
    this.J = this.a.i;
    this.b = new ay(this.a);
    this.h = new cl(this);
    this.f = new cq(this.l, this.b, this);
    this.g = new be(this.l, this);
    this.t = new av(this.l, this.e, this);
    this.z = new cp(this.l, this);
    this.A = new bv(this.l, this);
    this.C = new u(this.l, this.e, this);
    this.j = new bc(this.l, paramAttributeSet, this);
    paramContext = new ViewGroup.LayoutParams(-1, -1);
    U();
    this.g.addView(this.i, paramContext);
    this.g.addView(this.z, paramContext);
    this.g.addView(this.A, paramContext);
    paramContext = new be.a(paramContext);
    this.g.addView(this.j, paramContext);
    paramContext = new be.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 83);
    this.g.addView(this.f, paramContext);
    paramContext = new be.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 83);
    this.g.addView(this.t, paramContext);
    try
    {
      if (!p().d())
        this.t.setVisibility(8);
      this.C.setVisibility(8);
      paramContext = new be.a(-2, -2, new LatLng(0.0D, 0.0D), 0, 0, 51);
      this.g.addView(this.C, paramContext);
      this.y = new bo(this);
      this.f.setId(m.a);
    }
    catch (RemoteException paramContext)
    {
      try
      {
        this.aH.setName("AuthThread");
        this.aH.start();
        if (this.af == null)
        {
          this.af = new Timer();
          this.af.schedule(this.ag, 10000L, 1000L);
        }
        return;
        paramContext = paramContext;
        cz.a(paramContext, "AMapDelegateImpGLSurfaceView", "initEnviornment");
      }
      catch (Exception paramContext)
      {
        cz.a(paramContext, "AMapDelegateImpGLSurfaceView", "initEnviornment");
      }
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    if ((this.U) && (this.p != null) && (this.o != null))
    {
      int i1 = (int)paramMotionEvent.getX();
      int i2 = (int)(paramMotionEvent.getY() - 60.0F);
      paramMotionEvent = new x();
      a(i1, i2, paramMotionEvent);
      paramMotionEvent = new LatLng(paramMotionEvent.b, paramMotionEvent.a);
      if ((this.p != null) && (this.p.h()))
      {
        this.p.a(paramMotionEvent);
        if (this.W != null)
          this.W.onMarkerDrag(this.o);
      }
    }
  }

  private void a(boolean paramBoolean, CameraPosition paramCameraPosition)
  {
    if (this.G == null);
    while ((!this.H.a()) || (!isEnabled()))
      return;
    CameraPosition localCameraPosition1 = paramCameraPosition;
    if (paramCameraPosition == null);
    try
    {
      localCameraPosition1 = f();
      try
      {
        this.G.onCameraChangeFinish(localCameraPosition1);
        return;
      }
      catch (Throwable paramCameraPosition)
      {
        paramCameraPosition.printStackTrace();
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "cameraChangeFinish");
        CameraPosition localCameraPosition2 = paramCameraPosition;
      }
    }
  }

  private LatLng aa()
  {
    ab localab = B();
    if (localab == null)
      return null;
    return new LatLng(w.a(localab.b()), w.a(localab.a()));
  }

  private ak ab()
  {
    ab localab = B();
    ak localak = new ak();
    localak.a = ((int)localab.e());
    localak.b = ((int)localab.f());
    return localak;
  }

  private boolean b(MotionEvent paramMotionEvent)
  {
    boolean bool2 = this.al.a(paramMotionEvent, getWidth(), getHeight());
    boolean bool1 = bool2;
    if (!bool2)
      bool1 = this.ak.onTouchEvent(paramMotionEvent);
    if ((paramMotionEvent.getAction() == 1) && (this.V))
      q.a().b();
    if (paramMotionEvent.getAction() == 2)
      a(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1)
      W();
    return bool1;
  }

  public boolean A()
  {
    return this.n;
  }

  public ab B()
  {
    if ((this.a == null) || (this.a.c == null))
      return null;
    return this.a.c.f();
  }

  public ay C()
  {
    return this.b;
  }

  public boolean D()
  {
    if ((this.a == null) || (this.a.e == null));
    at localat;
    do
    {
      return false;
      localat = a().e.b(a().e.h);
    }
    while (localat == null);
    return localat.a();
  }

  public boolean E()
  {
    if (a() == null);
    Object localObject;
    do
    {
      return false;
      localObject = a().e.i;
      localObject = a().e.b((String)localObject);
    }
    while (localObject == null);
    return ((at)localObject).a();
  }

  public bn F()
  {
    return this.al;
  }

  public float I()
  {
    return this.as;
  }

  public void J()
  {
    this.au = 0.0F;
    this.av = 0.0F;
  }

  public int K()
  {
    return 0;
  }

  protected void L()
  {
    this.k.sendEmptyMessage(10);
  }

  void M()
  {
    this.k.sendEmptyMessage(15);
  }

  public void N()
  {
    if (this.I != null)
      this.I.onCancel();
  }

  public void O()
  {
    if (this.I != null)
      this.I.onFinish();
  }

  public void P()
  {
    this.k.sendEmptyMessage(17);
  }

  public void Q()
  {
    postInvalidate();
    this.g.postInvalidate();
  }

  public List<Marker> R()
  {
    if ((getWidth() > 0) && (getHeight() > 0));
    for (boolean bool = true; ; bool = false)
    {
      cw.a(bool, "地图未初始化完成！");
      return this.j.g();
    }
  }

  public void S()
  {
    a(null);
  }

  public float a(float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat < this.a.c.b())
      f1 = this.a.c.b();
    paramFloat = f1;
    if (f1 > this.a.c.a())
      paramFloat = this.a.c.a();
    return paramFloat;
  }

  public ae a(CircleOptions paramCircleOptions)
    throws RemoteException
  {
    t localt = new t(this);
    localt.b(paramCircleOptions.getFillColor());
    localt.a(paramCircleOptions.getCenter());
    localt.a(paramCircleOptions.isVisible());
    localt.b(paramCircleOptions.getStrokeWidth());
    localt.a(paramCircleOptions.getZIndex());
    localt.a(paramCircleOptions.getStrokeColor());
    localt.a(paramCircleOptions.getRadius());
    if (this.a == null)
      return null;
    this.a.g.a(localt);
    invalidate();
    return localt;
  }

  public af a(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException
  {
    ac localac = new ac(this);
    localac.b(paramGroundOverlayOptions.getAnchorU(), paramGroundOverlayOptions.getAnchorV());
    localac.c(paramGroundOverlayOptions.getBearing());
    localac.a(paramGroundOverlayOptions.getWidth(), paramGroundOverlayOptions.getHeight());
    localac.a(paramGroundOverlayOptions.getImage());
    localac.a(paramGroundOverlayOptions.getLocation());
    localac.a(paramGroundOverlayOptions.getBounds());
    localac.d(paramGroundOverlayOptions.getTransparency());
    localac.a(paramGroundOverlayOptions.isVisible());
    localac.a(paramGroundOverlayOptions.getZIndex());
    if (this.a == null)
      return null;
    this.a.g.a(localac);
    invalidate();
    return localac;
  }

  public al a(PolygonOptions paramPolygonOptions)
    throws RemoteException
  {
    bq localbq = new bq(this);
    localbq.a(paramPolygonOptions.getFillColor());
    localbq.a(paramPolygonOptions.getPoints());
    localbq.a(paramPolygonOptions.isVisible());
    localbq.b(paramPolygonOptions.getStrokeWidth());
    localbq.a(paramPolygonOptions.getZIndex());
    localbq.b(paramPolygonOptions.getStrokeColor());
    if (this.a == null)
      return null;
    this.a.g.a(localbq);
    invalidate();
    return localbq;
  }

  public am a(PolylineOptions paramPolylineOptions)
    throws RemoteException
  {
    br localbr = new br(this);
    localbr.a(paramPolylineOptions.getColor());
    localbr.b(paramPolylineOptions.isDottedLine());
    localbr.c(paramPolylineOptions.isGeodesic());
    localbr.a(paramPolylineOptions.getPoints());
    localbr.a(paramPolylineOptions.isVisible());
    localbr.b(paramPolylineOptions.getWidth());
    localbr.a(paramPolylineOptions.getZIndex());
    if (this.a == null)
      return null;
    a().g.a(localbr);
    invalidate();
    return localbr;
  }

  public bk a()
  {
    return this.a;
  }

  public Marker a(MarkerOptions paramMarkerOptions)
    throws RemoteException
  {
    paramMarkerOptions = new bi(paramMarkerOptions, this.j);
    this.j.a(paramMarkerOptions);
    invalidate();
    return new Marker(paramMarkerOptions);
  }

  public Text a(TextOptions paramTextOptions)
    throws RemoteException
  {
    paramTextOptions = new bz(this, paramTextOptions, this.j);
    this.j.a(paramTextOptions);
    invalidate();
    return new Text(paramTextOptions);
  }

  public TileOverlay a(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException
  {
    if (this.a == null)
      return null;
    paramTileOverlayOptions = new cd(paramTileOverlayOptions, this.i, this.a.i, this.a, this.l);
    this.i.a(paramTileOverlayOptions);
    invalidate();
    return new TileOverlay(paramTileOverlayOptions);
  }

  public void a(double paramDouble1, double paramDouble2, ak paramak)
  {
    ab localab = this.J.b(new ab((int)(paramDouble1 * 1000000.0D), (int)(1000000.0D * paramDouble2)));
    paramak.a = localab.a();
    paramak.b = localab.b();
  }

  public void a(double paramDouble1, double paramDouble2, x paramx)
  {
    e();
    Object localObject = new ab((int)w.a(paramDouble1), (int)w.a(paramDouble2));
    localObject = this.J.b((ab)localObject, this.J.l, this.J.n, this.J.k);
    if (paramx != null)
    {
      paramx.a = ((PointF)localObject).x;
      paramx.b = ((PointF)localObject).y;
    }
  }

  public void a(float paramFloat, Point paramPoint, boolean paramBoolean)
  {
    if (this.b == null);
    ak localak1;
    do
    {
      float f1;
      do
      {
        return;
        f1 = e();
      }
      while (cz.b(f1 + paramFloat) - f1 == 0.0F);
      new ak();
      localak1 = ab();
    }
    while (paramPoint == null);
    ak localak2 = new ak();
    a(paramPoint.x, paramPoint.y, localak2);
    int i2 = localak1.a - localak2.a;
    int i1 = localak1.b - localak2.b;
    i2 = (int)(i2 / Math.pow(2.0D, paramFloat) - i2);
    i1 = (int)(i1 / Math.pow(2.0D, paramFloat) - i1);
    localak1.a = (i2 + localak2.a);
    localak2.b += i1;
    paramPoint = new ab(localak1.b, localak1.a, false);
    paramPoint = this.a.i.b(paramPoint);
    if (paramBoolean)
    {
      this.b.a(paramPoint, 1000);
      return;
    }
    this.b.a(paramPoint);
    q.a().b();
  }

  public void a(int paramInt)
    throws RemoteException
  {
    if (paramInt == 2)
    {
      this.s = 2;
      h(true);
      this.z.a(true);
    }
    while (true)
    {
      postInvalidate();
      return;
      this.s = 1;
      h(false);
      this.z.a(false);
    }
  }

  public void a(int paramInt1, int paramInt2, x paramx)
  {
    Object localObject = new PointF(paramInt1, paramInt2);
    localObject = this.J.a((PointF)localObject, this.J.l, this.J.n, this.J.k, this.J.o);
    if (paramx != null)
    {
      double d1 = w.a(((ab)localObject).b());
      double d2 = w.a(((ab)localObject).a());
      paramx.b = d1;
      paramx.a = d2;
    }
  }

  public void a(Location paramLocation)
  {
    if (paramLocation == null)
      return;
    LatLng localLatLng = new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude());
    try
    {
      if ((!m()) || (this.B == null))
      {
        this.y.a();
        this.y = null;
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "showMyLocationOverlay");
    }
    while (true)
    {
      this.y.a(localLatLng, paramLocation.getAccuracy());
      if ((this.w != null) && ((this.u == null) || (this.u.getBearing() != paramLocation.getBearing()) || (this.u.getAccuracy() != paramLocation.getAccuracy()) || (this.u.getLatitude() != paramLocation.getLatitude()) || (this.u.getLongitude() != paramLocation.getLongitude())))
        this.w.onMyLocationChange(paramLocation);
      this.u = new Location(paramLocation);
      return;
      if ((this.y == null) || (this.u == null))
      {
        if (this.y == null)
          this.y = new bo(this);
        a(r.a(localLatLng, this.a.c.e()));
      }
    }
  }

  public void a(ah paramah)
    throws RemoteException
  {
    int i2 = -2;
    if (paramah == null);
    while ((paramah.f() == null) && (paramah.g() == null))
      return;
    s();
    Object localObject = new Marker(paramah);
    if (this.O != null)
      this.M = this.O.getInfoWindow((Marker)localObject);
    try
    {
      if (this.R == null)
        this.R = bp.a(this.l, "infowindow_bg2d.9.png");
      if ((this.M == null) && (this.O != null))
        this.M = this.O.getInfoContents((Marker)localObject);
      if (this.M != null)
      {
        if (this.M.getBackground() == null)
          this.M.setBackgroundDrawable(this.R);
        localObject = this.M.getLayoutParams();
        this.M.setDrawingCacheEnabled(true);
        this.M.setDrawingCacheQuality(0);
        x localx = paramah.e();
        if (localObject == null)
          break label387;
        i1 = ((ViewGroup.LayoutParams)localObject).width;
        i2 = ((ViewGroup.LayoutParams)localObject).height;
        localObject = new be.a(i1, i2, paramah.c(), -(int)localx.a + paramah.n() / 2, -(int)localx.b + 2, 81);
        this.P = ((bi)paramah);
        this.g.addView(this.M, (ViewGroup.LayoutParams)localObject);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        cz.a(localException, "AMapDelegateImpGLSurfaceView", "showInfoWindow");
        continue;
        localObject = new LinearLayout(this.l);
        ((LinearLayout)localObject).setBackgroundDrawable(this.R);
        TextView localTextView1 = new TextView(this.l);
        localTextView1.setText(paramah.f());
        localTextView1.setTextColor(-16777216);
        TextView localTextView2 = new TextView(this.l);
        localTextView2.setTextColor(-16777216);
        localTextView2.setText(paramah.g());
        ((LinearLayout)localObject).setOrientation(1);
        ((LinearLayout)localObject).addView(localTextView1);
        ((LinearLayout)localObject).addView(localTextView2);
        this.M = ((View)localObject);
        continue;
        label387: int i1 = -2;
      }
    }
  }

  public void a(r paramr)
    throws RemoteException
  {
    this.D.a(paramr);
  }

  public void a(r paramr, long paramLong, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException
  {
    boolean bool;
    if (paramr.a == r.a.j)
    {
      if ((getWidth() > 0) && (getHeight() > 0))
      {
        bool = true;
        cw.a(bool, "the map must have a size");
      }
    }
    else
      if (this.b != null)
        break label49;
    label49: 
    do
    {
      return;
      bool = false;
      break;
      if (!this.H.a())
      {
        this.H.a(true);
        if (this.I != null)
          this.I.onCancel();
      }
      this.I = paramCancelableCallback;
      if (this.E)
        this.F = true;
      if (paramr.a != r.a.h)
        break label151;
      L();
    }
    while ((this.a == null) || (!this.m));
    this.b.b((int)paramr.b, (int)paramr.c);
    postInvalidate();
    return;
    label151: if (paramr.a == r.a.b)
    {
      this.b.c();
      return;
    }
    if (paramr.a == r.a.e)
    {
      this.b.d();
      return;
    }
    if (paramr.a == r.a.f)
    {
      float f1 = paramr.d;
      this.b.c(f1);
      return;
    }
    if (paramr.a == r.a.g)
    {
      a(paramr.e, paramr.h, true);
      return;
    }
    int i1;
    int i2;
    if (paramr.a == r.a.i)
    {
      paramr = paramr.f;
      this.b.c(paramr.zoom);
      i1 = (int)(paramr.target.latitude * 1000000.0D);
      i2 = (int)(paramr.target.longitude * 1000000.0D);
      this.b.a(new ab(i1, i2), (int)paramLong);
      return;
    }
    if (paramr.a == r.a.c)
    {
      paramr = paramr.f;
      i1 = (int)(paramr.target.latitude * 1000000.0D);
      i2 = (int)(paramr.target.longitude * 1000000.0D);
      this.b.a(new ab(i1, i2), (int)paramLong);
      return;
    }
    if ((paramr.a == r.a.j) || (paramr.a == r.a.k))
    {
      L();
      a(paramr, true, paramLong);
      return;
    }
    paramr.i = true;
    this.e.a(paramr);
  }

  public void a(r paramr, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException
  {
    a(paramr, 250L, paramCancelableCallback);
  }

  protected void a(r paramr, boolean paramBoolean, long paramLong)
  {
    if (this.b == null)
      return;
    while (true)
    {
      try
      {
        paramr = paramr.g;
        float f1 = (float)(paramr.northeast.latitude * 1000000.0D - paramr.southwest.latitude * 1000000.0D);
        float f2 = (float)(paramr.northeast.longitude * 1000000.0D - paramr.southwest.longitude * 1000000.0D);
        paramr = new ab((int)((paramr.northeast.latitude * 1000000.0D + paramr.southwest.latitude * 1000000.0D) / 2.0D), (int)((paramr.northeast.longitude * 1000000.0D + paramr.southwest.longitude * 1000000.0D) / 2.0D));
        if (paramBoolean)
        {
          this.b.a(paramr, (int)paramLong);
          this.b.a(f1, f2);
          q.a().b();
          return;
        }
      }
      catch (Exception paramr)
      {
        cz.a(paramr, "AMapDelegateImpGLSurfaceView", "newLatLngBoundsWithSize");
        return;
      }
      this.b.a(paramr);
    }
  }

  public void a(AMap.InfoWindowAdapter paramInfoWindowAdapter)
    throws RemoteException
  {
    this.O = paramInfoWindowAdapter;
  }

  public void a(AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
  {
    if (this.ah != null);
    try
    {
      paramOnCacheRemoveListener = new b.b(this, this.l, paramOnCacheRemoveListener);
      this.ah.removeCallbacks(paramOnCacheRemoveListener);
      this.ah.post(paramOnCacheRemoveListener);
      return;
    }
    catch (Throwable paramOnCacheRemoveListener)
    {
      dn.a(paramOnCacheRemoveListener, "AMapDelegateImpGLSurfaceView", "removecache");
      paramOnCacheRemoveListener.printStackTrace();
    }
  }

  public void a(AMap.OnCameraChangeListener paramOnCameraChangeListener)
    throws RemoteException
  {
    this.G = paramOnCameraChangeListener;
  }

  public void a(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
    throws RemoteException
  {
    this.N = paramOnInfoWindowClickListener;
  }

  public void a(AMap.OnMapClickListener paramOnMapClickListener)
    throws RemoteException
  {
    this.ac = paramOnMapClickListener;
  }

  public void a(AMap.OnMapLoadedListener paramOnMapLoadedListener)
    throws RemoteException
  {
    this.ab = paramOnMapLoadedListener;
  }

  public void a(AMap.OnMapLongClickListener paramOnMapLongClickListener)
    throws RemoteException
  {
    this.aa = paramOnMapLongClickListener;
  }

  public void a(AMap.OnMapScreenShotListener paramOnMapScreenShotListener)
  {
    this.ae = paramOnMapScreenShotListener;
    this.T = true;
  }

  public void a(AMap.OnMapTouchListener paramOnMapTouchListener)
    throws RemoteException
  {
    this.Z = paramOnMapTouchListener;
  }

  public void a(AMap.OnMarkerClickListener paramOnMarkerClickListener)
    throws RemoteException
  {
    this.Q = paramOnMarkerClickListener;
  }

  public void a(AMap.OnMarkerDragListener paramOnMarkerDragListener)
    throws RemoteException
  {
    this.W = paramOnMarkerDragListener;
  }

  public void a(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
    throws RemoteException
  {
    this.w = paramOnMyLocationChangeListener;
  }

  public void a(LocationSource paramLocationSource)
    throws RemoteException
  {
    this.B = paramLocationSource;
    if (paramLocationSource != null)
    {
      this.t.a(true);
      return;
    }
    this.t.a(false);
  }

  public void a(MyLocationStyle paramMyLocationStyle)
    throws RemoteException
  {
    if (n() != null)
      n().a(paramMyLocationStyle);
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
  }

  public boolean a(float paramFloat1, float paramFloat2)
  {
    this.b.a(true);
    if (this.at)
    {
      this.au += paramFloat1;
      this.av += paramFloat2;
    }
    invalidate();
    return this.at;
  }

  public boolean a(float paramFloat, PointF paramPointF)
  {
    try
    {
      boolean bool = this.h.f();
      if (!bool)
        return false;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onScale");
      this.a.e.c = false;
      L();
      a(paramFloat, paramPointF, this.au, this.av);
      this.at = false;
      postInvalidateDelayed(8L);
      this.a.a(true);
    }
    return true;
  }

  public boolean a(Matrix paramMatrix)
  {
    return false;
  }

  public boolean a(PointF paramPointF)
  {
    while (true)
    {
      boolean bool;
      try
      {
        bool = this.h.f();
        if (!bool)
          return false;
      }
      catch (RemoteException paramPointF)
      {
        cz.a(paramPointF, "AMapDelegateImpGLSurfaceView", "startScale");
      }
      try
      {
        bool = p().f();
        if (!bool)
          continue;
        this.a.a(this.n);
        this.a.e.a(true);
        this.a.e.c = true;
        this.at = true;
        return true;
      }
      catch (RemoteException paramPointF)
      {
        while (true)
          cz.a(paramPointF, "AMapDelegateImpGLSurfaceView", "startScale");
      }
    }
  }

  public boolean a(String paramString)
    throws RemoteException
  {
    if (this.a == null)
      return false;
    return this.a.g.b(paramString);
  }

  public int b()
  {
    if ((this.a == null) || (this.a.c == null))
      return 0;
    return this.a.c.c();
  }

  protected PointF b(PointF paramPointF)
  {
    PointF localPointF = new PointF();
    int i1 = getWidth();
    int i2 = getHeight();
    float f1 = paramPointF.x - (i1 >> 1);
    float f2 = paramPointF.y - (i2 >> 1);
    double d2 = Math.atan2(f2, f1);
    double d1 = Math.pow(f1, 2.0D);
    d1 = Math.sqrt(Math.pow(f2, 2.0D) + d1);
    d2 -= K() * 3.141592653589793D / 180.0D;
    localPointF.x = ((float)(Math.cos(d2) * d1 + (i1 >> 1)));
    d2 = Math.sin(d2);
    localPointF.y = ((float)((i2 >> 1) + d1 * d2));
    return localPointF;
  }

  public bi b(MarkerOptions paramMarkerOptions)
    throws RemoteException
  {
    paramMarkerOptions = new bi(paramMarkerOptions, this.j);
    this.j.a(paramMarkerOptions);
    invalidate();
    return paramMarkerOptions;
  }

  public void b(double paramDouble1, double paramDouble2, ak paramak)
  {
    e();
    Object localObject = new ab((int)w.a(paramDouble1), (int)w.a(paramDouble2));
    localObject = this.J.b((ab)localObject, this.J.l, this.J.n, this.J.k);
    if (paramak != null)
    {
      paramak.a = ((int)((PointF)localObject).x);
      paramak.b = ((int)((PointF)localObject).y);
    }
  }

  public void b(float paramFloat)
    throws RemoteException
  {
    if (this.y != null)
      this.y.a(paramFloat);
  }

  public void b(int paramInt)
  {
    if (this.z != null)
    {
      this.z.a(paramInt);
      this.z.invalidate();
      if (this.A.getVisibility() == 0)
        this.A.invalidate();
    }
  }

  public void b(int paramInt1, int paramInt2, x paramx)
  {
    if (paramx != null)
    {
      paramx.a = w.a(paramInt1);
      paramx.b = w.a(paramInt2);
    }
  }

  public void b(r paramr)
    throws RemoteException
  {
    a(paramr, null);
  }

  public void b(boolean paramBoolean)
    throws RemoteException
  {
    i(paramBoolean);
    postInvalidate();
  }

  public boolean b(float paramFloat, PointF paramPointF)
  {
    this.at = false;
    try
    {
      boolean bool = this.h.f();
      if (!bool)
        return false;
    }
    catch (RemoteException paramPointF)
    {
      cz.a(paramPointF, "AMapDelegateImpGLSurfaceView", "endScale");
      q.a().b();
    }
    return true;
  }

  public boolean b(Matrix paramMatrix)
  {
    try
    {
      boolean bool = this.h.f();
      if (!bool)
        return false;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onScale");
      this.ar.set(paramMatrix);
      postInvalidate();
    }
    return true;
  }

  public boolean b(ah paramah)
  {
    if ((this.P != null) && (this.M != null))
      return this.P.d().equals(paramah.d());
    return false;
  }

  public boolean b(String paramString)
  {
    try
    {
      paramString = this.j.a(paramString);
      if (paramString != null)
        return this.j.b(paramString);
    }
    catch (RemoteException paramString)
    {
      while (true)
      {
        cz.a(paramString, "AMapDelegateImpGLSurfaceView", "removeMarker");
        paramString = null;
      }
    }
    return false;
  }

  public int c()
  {
    if ((this.a == null) || (this.a.c == null))
      return 0;
    return this.a.c.d();
  }

  protected PointF c(PointF paramPointF)
  {
    PointF localPointF = new PointF();
    int i1 = getWidth();
    int i2 = getHeight();
    float f1 = paramPointF.x - (i1 >> 1);
    float f2 = paramPointF.y - (i2 >> 1);
    double d2 = Math.atan2(f2, f1);
    double d1 = Math.pow(f1, 2.0D);
    d1 = Math.sqrt(Math.pow(f2, 2.0D) + d1);
    d2 += K() * 3.141592653589793D / 180.0D;
    localPointF.x = ((float)(Math.cos(d2) * d1 + (i1 >> 1)));
    d2 = Math.sin(d2);
    localPointF.y = ((float)((i2 >> 1) + d1 * d2));
    return localPointF;
  }

  public void c(float paramFloat)
  {
    this.as = paramFloat;
  }

  public void c(int paramInt)
  {
    if (this.f != null)
    {
      this.f.a(paramInt);
      this.f.invalidate();
    }
  }

  public void c(String paramString)
    throws RemoteException
  {
    if ((this.a == null) || (this.a.e == null));
    while (D())
      return;
    this.a.e.a(paramString);
  }

  public void c(boolean paramBoolean)
    throws RemoteException
  {
    if (this.B != null)
      if (paramBoolean)
      {
        this.B.activate(this.v);
        this.t.a(true);
        if (this.y == null)
          this.y = new bo(this);
        if (!paramBoolean)
          break label113;
        this.t.setVisibility(0);
      }
    while (true)
    {
      this.x = paramBoolean;
      return;
      if (this.y != null)
      {
        this.y.a();
        this.y = null;
      }
      this.u = null;
      this.B.deactivate();
      this.t.a(false);
      break;
      label113: this.t.setVisibility(8);
    }
  }

  public void computeScroll()
  {
    if (this.ao.computeScrollOffset())
    {
      int i1 = this.ao.getCurrX();
      int i2 = this.ap;
      int i3 = this.ao.getCurrY();
      int i4 = this.aq;
      this.ap = this.ao.getCurrX();
      this.aq = this.ao.getCurrY();
      ab localab = this.a.b.a(i1 - i2 + this.a.i.n.x, i3 - i4 + this.a.i.n.y);
      if (this.ao.isFinished())
      {
        q.a().b();
        if (this.G != null)
          a(true, Y());
        this.a.c.a(false, false);
        return;
      }
      this.a.c.b(localab);
      return;
    }
    super.computeScroll();
  }

  public View d()
    throws RemoteException
  {
    return this.g;
  }

  public void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.f.setVisibility(0);
      return;
    }
    this.f.setVisibility(8);
  }

  public boolean d(float paramFloat)
  {
    try
    {
      boolean bool = this.h.f();
      if (!bool)
        return false;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onScale");
      c(paramFloat);
    }
    return false;
  }

  public float e()
  {
    if ((this.a == null) || (this.a.c == null))
      return 0.0F;
    try
    {
      float f1 = this.a.c.e();
      return f1;
    }
    catch (Exception localException)
    {
      cz.a(localException, "AMapDelegateImpGLSurfaceView", "getZoomLevel");
    }
    return 0.0F;
  }

  public void e(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.t.setVisibility(0);
      return;
    }
    this.t.setVisibility(8);
  }

  public CameraPosition f()
    throws RemoteException
  {
    LatLng localLatLng = aa();
    if (localLatLng == null)
      return null;
    float f1 = e();
    return CameraPosition.builder().target(localLatLng).zoom(f1).build();
  }

  public void f(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.C.setVisibility(0);
      return;
    }
    this.C.setVisibility(8);
  }

  public float g()
  {
    if ((this.a == null) || (this.a.c == null))
      return v.c;
    return this.a.c.a();
  }

  public void g(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.A.setVisibility(0);
      M();
      return;
    }
    this.A.a("");
    this.A.a(0);
    this.A.setVisibility(8);
  }

  public float h()
  {
    if ((this.a == null) || (this.a.c == null))
      return v.d;
    return this.a.c.b();
  }

  public void h(boolean paramBoolean)
  {
    if (D() == paramBoolean);
    do
    {
      return;
      if (!paramBoolean)
      {
        a().e.a(a().e.h, false);
        a().e.a(a().e.g, true);
        a().c.a(false, false);
        return;
      }
    }
    while (this.a == null);
    if (a().e.b(a().e.h) != null)
    {
      a().e.a(a().e.h, true);
      a().c.a(false, false);
      return;
    }
    at localat = new at(this.J);
    localat.q = new cg(this.a, this.l, localat);
    localat.j = new b.1(this);
    localat.b = a().e.h;
    localat.e = true;
    localat.a(true);
    localat.f = true;
    localat.c = v.c;
    localat.d = v.d;
    a().e.a(localat, getContext());
    a().e.a(a().e.h, true);
    a().c.a(false, false);
  }

  public void i()
    throws RemoteException
  {
    if (this.b == null)
      return;
    if (!this.H.a())
    {
      this.H.a(true);
      q.a().b();
      if (this.I != null)
        this.I.onCancel();
      this.I = null;
    }
    this.b.a(true);
  }

  public void i(boolean paramBoolean)
  {
    if (paramBoolean == E());
    while (this.a == null)
      return;
    String str = a().e.i;
    if (!paramBoolean)
    {
      a().e.a(str, false);
      a().c.a(false, false);
      return;
    }
    if (a().e.b(str) != null)
    {
      a().e.a(str, true);
      a().c.a(false, false);
      return;
    }
    at localat = new at(this.J);
    localat.q = new cg(this.a, this.l, localat);
    localat.g = true;
    localat.i = 120000L;
    localat.j = new b.2(this);
    localat.b = str;
    localat.e = false;
    localat.a(true);
    localat.f = false;
    localat.c = 18;
    localat.d = 9;
    a().e.a(localat, getContext());
    a().e.a(str, true);
    a().c.a(false, false);
  }

  public void j()
    throws RemoteException
  {
    try
    {
      s();
      if (this.a == null)
        return;
      this.a.g.a();
      this.j.c();
      this.i.b();
      if (this.y != null)
        this.y.a();
      invalidate();
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "AMapDelegateImpGLSurfaceView", "clear");
      Log.d("amapApi", "AMapDelegateImpGLSurfaceView clear erro" + localException.getMessage());
      return;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "AMapDelegateImpGLSurfaceView", "clear");
    }
  }

  public int k()
    throws RemoteException
  {
    return this.s;
  }

  public boolean l()
    throws RemoteException
  {
    return E();
  }

  public boolean m()
    throws RemoteException
  {
    return this.x;
  }

  public bo n()
  {
    return this.y;
  }

  public Location o()
    throws RemoteException
  {
    if (this.B != null)
      return this.v.a;
    return null;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
  }

  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = this.h.f();
      if (!bool)
        return true;
    }
    catch (RemoteException localRemoteException)
    {
      do
      {
        cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onDoubleTap");
        if (this.r)
          this.b.a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      }
      while (this.aE > 1);
      this.aF = true;
      this.f.a(this.a.c.e() + 1.0F);
    }
    return true;
  }

  public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    this.V = false;
    if ((!this.aF) && (!this.H.a()))
    {
      this.H.a(true);
      if (this.I != null)
        this.I.onCancel();
      this.I = null;
    }
    this.aF = false;
    this.aE = 0;
    if (this.aj == null)
    {
      this.aj = new Point((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      return true;
    }
    this.aj.set((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    return true;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    Object localObject = H();
    paramCanvas.drawColor(G());
    int i1 = getWidth();
    int i2 = getHeight();
    if (i1 > i2);
    while (true)
    {
      float f1 = getLeft();
      float f2 = getTop();
      i2 = 0;
      while (i2 < i1)
      {
        paramCanvas.drawLine(f1, i2, f1 + getWidth(), i2, (Paint)localObject);
        paramCanvas.drawLine(i2, f2, i2, f2 + getHeight(), (Paint)localObject);
        i2 += 256;
      }
      if (this.T)
      {
        setDrawingCacheEnabled(true);
        buildDrawingCache();
        localObject = getDrawingCache();
        Message localMessage = this.k.obtainMessage();
        localMessage.what = 16;
        localMessage.obj = localObject;
        this.k.sendMessage(localMessage);
        this.T = false;
      }
      this.a.c.a(getWidth(), getHeight());
      this.a.e.a(paramCanvas, this.ar, this.au, this.av);
      if (!this.H.a())
        this.k.sendEmptyMessage(13);
      if (!this.ad)
      {
        this.k.sendEmptyMessage(11);
        this.ad = true;
      }
      return;
      i1 = i2;
    }
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((this.al.k) || (paramMotionEvent1.getEventTime() - this.al.o < 30L));
    while (true)
    {
      return true;
      invalidate();
      this.V = false;
      try
      {
        boolean bool = this.h.e();
        if (!bool)
          continue;
        this.I = null;
        this.ao.fling(this.ap, this.aq, (int)-paramFloat1 * 3 / 5, (int)-paramFloat2 * 3 / 5, -this.aw, this.aw, -this.ax, this.ax);
        return true;
      }
      catch (RemoteException paramMotionEvent1)
      {
        while (true)
          cz.a(paramMotionEvent1, "AMapDelegateImpGLSurfaceView", "onFling");
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a == null);
    do
    {
      return true;
      if (!this.m)
        return false;
    }
    while ((this.a.e.a(paramInt, paramKeyEvent)) || (this.b.onKey(this, paramInt, paramKeyEvent)));
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a == null);
    do
    {
      return true;
      if (!this.m)
        return false;
    }
    while ((this.a.e.b(paramInt, paramKeyEvent)) || (this.b.onKey(this, paramInt, paramKeyEvent)));
    return false;
  }

  public void onLongPress(MotionEvent paramMotionEvent)
  {
    this.V = false;
    if (this.aa != null)
    {
      x localx = new x();
      a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), localx);
      this.aa.onMapLongClick(new LatLng(localx.b, localx.a));
      this.K = true;
    }
    this.p = this.j.a(paramMotionEvent);
    if (this.p == null);
    do
    {
      return;
      this.o = new Marker(this.p);
    }
    while ((this.W == null) || (this.p == null) || (!this.p.h()));
    paramMotionEvent = a(this.p.c());
    this.p.a(paramMotionEvent);
    this.j.c(this.p);
    this.W.onMarkerDragStart(this.o);
    this.U = true;
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(paramParcelable);
  }

  protected Parcelable onSaveInstanceState()
  {
    return super.onSaveInstanceState();
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((this.al.k) || (paramMotionEvent2.getEventTime() - this.al.o < 30L))
      return true;
    try
    {
      if (!this.h.e())
      {
        this.V = false;
        return true;
      }
    }
    catch (RemoteException paramMotionEvent1)
    {
      cz.a(paramMotionEvent1, "AMapDelegateImpGLSurfaceView", "onScroll");
      if (this.aE > 1)
      {
        this.V = false;
        return true;
      }
      this.V = true;
      a((int)paramMotionEvent2.getX(), (int)paramMotionEvent2.getY());
      postInvalidate();
      L();
    }
    return true;
  }

  public void onShowPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (this.b == null)
      return false;
    this.a.e.b(paramMotionEvent);
    Object localObject = this.am.iterator();
    while (((Iterator)localObject).hasNext())
      ((GestureDetector.OnGestureListener)((Iterator)localObject).next()).onSingleTapUp(paramMotionEvent);
    this.V = false;
    if (this.K)
    {
      this.K = false;
      return true;
    }
    try
    {
      if (this.M != null)
      {
        localObject = new Rect(this.M.getLeft(), this.M.getTop(), this.M.getRight(), this.M.getBottom());
        if ((this.j.a((Rect)localObject, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) && (this.N != null))
        {
          paramMotionEvent = this.j.e();
          if (!paramMotionEvent.s())
            return true;
          paramMotionEvent = new Marker(paramMotionEvent);
          this.N.onInfoWindowClick(paramMotionEvent);
          return true;
        }
      }
      if (this.j.b(paramMotionEvent))
      {
        paramMotionEvent = this.j.e();
        if ((paramMotionEvent == null) || (!paramMotionEvent.s()))
          break label416;
        localObject = new Marker(paramMotionEvent);
        if (this.Q != null)
          if ((this.Q.onMarkerClick((Marker)localObject)) || (this.j.b() <= 0))
          {
            this.j.c(paramMotionEvent);
            return true;
          }
        try
        {
          if ((this.j.e() != null) && (!paramMotionEvent.q()))
          {
            localObject = paramMotionEvent.c();
            if (localObject != null)
            {
              this.b.a(cz.a((LatLng)localObject));
              q.a().b();
            }
          }
          a(paramMotionEvent);
          this.j.c(paramMotionEvent);
          return true;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            cz.a(localRemoteException, "AMapDelegateImpGLSurfaceView", "onSingleTapConfirmed");
        }
      }
    }
    catch (Exception paramMotionEvent)
    {
      cz.a(paramMotionEvent, "AMapDelegateImpGLSurfaceView", "onSingleTapConfirmed");
      return true;
    }
    if (this.ac != null)
    {
      x localx = new x();
      a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY(), localx);
      this.ac.onMapClick(new LatLng(localx.b, localx.a));
    }
    return true;
    label416: return true;
  }

  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    Point localPoint = new Point(paramInt1 / 2, paramInt2 / 2);
    this.a.i.a(localPoint);
    this.a.c.a(paramInt1, paramInt2);
    if ((this.b.a() != 0.0F) && (this.b.b() != 0.0F))
    {
      this.b.a(this.b.a(), this.b.b());
      this.b.a(0.0F);
      this.b.b(0.0F);
    }
    t();
    if (this.aG != null)
      this.aG.a(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!v.o);
    do
    {
      do
        return true;
      while (this.a == null);
      if (!this.m)
        return false;
      if (this.Z != null)
      {
        this.ai.removeMessages(1);
        Message localMessage = this.ai.obtainMessage();
        localMessage.what = 1;
        localMessage.obj = MotionEvent.obtain(paramMotionEvent);
        localMessage.sendToTarget();
      }
    }
    while (this.a.e.a(paramMotionEvent));
    b(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
  }

  public ar p()
    throws RemoteException
  {
    return this.h;
  }

  public an q()
  {
    return this.S;
  }

  public bs r()
  {
    return this.a.b;
  }

  public void s()
  {
    if (this.M != null)
    {
      this.M.clearFocus();
      this.M.destroyDrawingCache();
      this.g.removeView(this.M);
      Drawable localDrawable = this.M.getBackground();
      if (localDrawable != null)
        localDrawable.setCallback(null);
      this.M = null;
    }
    this.P = null;
  }

  public void setClickable(boolean paramBoolean)
  {
    this.m = paramBoolean;
    super.setClickable(paramBoolean);
  }

  public void t()
  {
    if ((this.M != null) && (this.P != null))
    {
      be.a locala = (be.a)this.M.getLayoutParams();
      if (locala != null)
        locala.b = this.P.c();
      this.g.a();
    }
  }

  public void u()
  {
    try
    {
      if (this.af != null)
      {
        this.af.cancel();
        this.af = null;
      }
      if (this.ag != null)
      {
        this.ag.cancel();
        this.ag = null;
      }
      if (this.ai != null)
        this.ai.removeCallbacksAndMessages(null);
      if (this.k != null)
        this.k.removeCallbacksAndMessages(null);
      s.a().b(this);
      bw.a().b(this);
      q.a().b(this);
      this.f.a();
      this.A.a();
      this.z.a();
      this.t.a();
      this.C.a();
      this.a.g.b();
      this.j.f();
      if (this.R != null)
        this.R.setCallback(null);
      this.g.removeAllViews();
      s();
      if (this.i != null)
        this.i.f();
      if (this.a != null)
      {
        this.a.d.b();
        V();
      }
      v.h = null;
      v.g = null;
      dn.c();
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "AMapDelegateImpGLSurfaceView", "destroy");
    }
  }

  public float v()
  {
    int i1 = getWidth();
    x localx1 = new x();
    x localx2 = new x();
    a(0, 0, localx1);
    a(i1, 0, localx2);
    return (float)(cz.a(new LatLng(localx1.b, localx1.a), new LatLng(localx2.b, localx2.a)) / i1);
  }

  public LatLngBounds w()
  {
    return null;
  }

  public void x()
  {
    if (this.a != null)
      this.a.d.c();
    if (this.i != null)
      this.i.e();
  }

  public void y()
  {
    if (this.a != null)
      this.a.d.d();
    if (this.i != null)
      this.i.d();
  }

  Point z()
  {
    return this.z.c();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.b
 * JD-Core Version:    0.6.2
 */