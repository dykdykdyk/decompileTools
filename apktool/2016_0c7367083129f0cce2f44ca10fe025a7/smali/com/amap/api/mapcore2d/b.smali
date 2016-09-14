.class Lcom/amap/api/mapcore2d/b;
.super Landroid/view/View;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/api/mapcore2d/ba$b;
.implements Lcom/amap/api/mapcore2d/bj$a;
.implements Lcom/amap/api/mapcore2d/k$a;
.implements Lcom/amap/api/mapcore2d/m$a;
.implements Lcom/amap/api/mapcore2d/w;


# static fields
.field private static aD:I

.field private static aE:Landroid/graphics/Paint;

.field private static aF:Landroid/graphics/Bitmap;


# instance fields
.field private A:Lcom/amap/api/mapcore2d/ca;

.field private B:Lcom/amap/api/mapcore2d/bi;

.field private C:Lcom/amap/api/maps2d/LocationSource;

.field private D:Lcom/amap/api/mapcore2d/o;

.field private E:Lcom/amap/api/mapcore2d/a;

.field private F:Z

.field private G:Z

.field private H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

.field private I:Lcom/amap/api/mapcore2d/j;

.field private J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private K:Lcom/amap/api/mapcore2d/au;

.field private L:Z

.field private M:Z

.field private N:Landroid/view/View;

.field private O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

.field private P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

.field private Q:Lcom/amap/api/mapcore2d/ax;

.field private R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

.field private S:Landroid/graphics/drawable/Drawable;

.field private T:Lcom/amap/api/mapcore2d/ag;

.field private U:Z

.field private V:Z

.field private W:Z

.field private Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

.field a:Lcom/amap/api/mapcore2d/ay;

.field private aA:J

.field private aB:I

.field private aC:I

.field private aG:I

.field private aH:Z

.field private aI:Lcom/amap/api/mapcore2d/b$a;

.field private aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

.field private ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

.field private ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

.field private ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private ae:Z

.field private af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

.field private ag:Ljava/util/Timer;

.field private ah:Ljava/lang/Thread;

.field private ai:Ljava/util/TimerTask;

.field private aj:Landroid/os/Handler;

.field private ak:Landroid/os/Handler;

.field private al:Landroid/graphics/Point;

.field private am:Landroid/view/GestureDetector;

.field private an:Lcom/amap/api/mapcore2d/ba$a;

.field private ao:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/ba$b;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Landroid/widget/Scroller;

.field private ar:I

.field private as:I

.field private at:Landroid/graphics/Matrix;

.field private au:F

.field private av:Z

.field private aw:F

.field private ax:F

.field private ay:I

.field private az:I

.field public b:Lcom/amap/api/mapcore2d/ap;

.field c:[F

.field d:Z

.field e:Lcom/amap/api/mapcore2d/ar;

.field f:Lcom/amap/api/mapcore2d/cb;

.field public g:Lcom/amap/api/mapcore2d/at;

.field protected h:Lcom/amap/api/mapcore2d/ak;

.field public i:Lcom/amap/api/mapcore2d/br;

.field public j:Lcom/amap/api/mapcore2d/as;

.field final k:Landroid/os/Handler;

.field l:F

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Z

.field private p:Lcom/amap/api/maps2d/model/Marker;

.field private q:Lcom/amap/api/mapcore2d/aa;

.field private final r:[I

.field private s:Z

.field private t:I

.field private u:Lcom/amap/api/mapcore2d/ao;

.field private v:Landroid/location/Location;

.field private w:Lcom/amap/api/mapcore2d/c;

.field private x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

.field private y:Z

.field private z:Lcom/amap/api/mapcore2d/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1901
    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore2d/b;->aD:I

    .line 1902
    sput-object v3, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    .line 1903
    sput-object v3, Lcom/amap/api/mapcore2d/b;->aF:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1291
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    .line 95
    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    .line 98
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:[I

    .line 101
    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->s:Z

    .line 102
    iput v4, p0, Lcom/amap/api/mapcore2d/b;->t:I

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    .line 107
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->d:Z

    .line 112
    new-instance v0, Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ar;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    .line 119
    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    .line 128
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    .line 129
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    .line 130
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    .line 146
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 148
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 149
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    .line 155
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 158
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 159
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 165
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    .line 166
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 170
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    .line 172
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    .line 174
    new-instance v0, Lcom/amap/api/mapcore2d/b$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/b$1;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/amap/api/mapcore2d/b$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/b$2;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/amap/api/mapcore2d/b$3;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/b$3;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Ljava/util/ArrayList;

    .line 1869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Ljava/util/ArrayList;

    .line 1871
    iput v2, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    .line 1872
    iput v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    .line 1873
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->at:Landroid/graphics/Matrix;

    .line 1874
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    .line 1875
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    .line 1880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/b;->aA:J

    .line 1881
    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    .line 1882
    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    .line 2327
    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2329
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    .line 2545
    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->aI:Lcom/amap/api/mapcore2d/b$a;

    .line 2646
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->l:F

    .line 1292
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->U()V

    .line 1293
    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore2d/b;->setClickable(Z)V

    .line 1294
    invoke-direct {p0, p1, v3}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1295
    return-void

    .line 98
    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method public static H()I
    .locals 1

    .prologue
    .line 1906
    sget v0, Lcom/amap/api/mapcore2d/b;->aD:I

    return v0
.end method

.method public static declared-synchronized I()Landroid/graphics/Paint;
    .locals 4

    .prologue
    .line 1910
    const-class v1, Lcom/amap/api/mapcore2d/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1911
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1912
    sput-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1913
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1914
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1916
    sget-object v2, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1918
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/b;->aE:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1914
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
    .end array-data
.end method

.method private U()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1260
    const-string v3, "setLayerType"

    .line 1261
    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1263
    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 1264
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setLayerType"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1270
    :goto_1
    if-eqz v0, :cond_0

    .line 1272
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1273
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :cond_0
    :goto_2
    return-void

    .line 1263
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1437
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;)V

    .line 1438
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1441
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    return-void
.end method

.method private W()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1679
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->a()V

    .line 1680
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    .line 1682
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->e()V

    .line 1684
    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1686
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    .line 1689
    return-void
.end method

.method private X()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1692
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-eqz v0, :cond_0

    .line 1693
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 1694
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    if-eqz v0, :cond_1

    .line 1695
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 1697
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 1698
    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 1699
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    .line 1701
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    if-eqz v0, :cond_2

    .line 1702
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->M:Z

    .line 1704
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 1705
    iput-boolean v3, v0, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 1706
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    .line 1708
    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 1709
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_3

    .line 1710
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps2d/model/Marker;)V

    .line 1711
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    .line 1712
    iput-object v4, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    .line 1714
    :cond_3
    return-void
.end method

.method private Y()V
    .locals 4

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 2007
    :goto_0
    return-void

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    sub-int/2addr v0, v1

    .line 2003
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    sub-int/2addr v1, v2

    .line 2004
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 2005
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 2006
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    goto :goto_0
.end method

.method private Z()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 2037
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2038
    if-nez v0, :cond_0

    .line 2039
    const/4 v0, 0x0

    .line 2046
    :goto_0
    return-object v0

    .line 2041
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    .line 2042
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 2043
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2044
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    .line 2045
    invoke-static {v4, v0}, Lcom/amap/api/maps2d/model/CameraPosition;->fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 7

    .prologue
    .line 2136
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 2137
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ad;)V

    .line 2138
    iget v0, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    add-int/lit8 v0, v0, -0x3c

    iput v0, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2139
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 2140
    iget v1, v6, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 2141
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2142
    return-object v1
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2449
    const-string v1, "doScale"

    .line 2451
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2455
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2459
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2460
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2461
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 2462
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 2463
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v2

    .line 2464
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 2465
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v4, v4, v6

    aput v4, v3, v7

    .line 2466
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput v2, v3, v6

    .line 2467
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v4, v4, v6

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 2468
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    invoke-virtual {v3, v0, v1}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2469
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(F)V

    .line 2470
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 2471
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->aa()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 2016
    :goto_0
    return-void

    .line 2013
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->aB:I

    .line 2014
    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    .line 2015
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Y()V

    goto :goto_0
.end method

.method private a(IILcom/amap/api/mapcore2d/ad;)V
    .locals 7

    .prologue
    .line 2721
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    .line 2722
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2723
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2727
    if-eqz p3, :cond_0

    .line 2728
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p3, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2729
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2731
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    .line 1886
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->am:Landroid/view/GestureDetector;

    .line 1887
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/ba;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/ba$b;)Lcom/amap/api/mapcore2d/ba$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    .line 1888
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    .line 1889
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1890
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1891
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->ay:I

    .line 1892
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->az:I

    .line 1893
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    .line 1894
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->as:I

    .line 1895
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, -0x2

    const-wide/16 v8, 0x0

    .line 1327
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/p;->b:Ljava/lang/String;

    .line 1328
    const-string v7, "initEnviornment"

    .line 1329
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    .line 1331
    new-instance v0, Lcom/amap/api/mapcore2d/f;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/f;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    .line 1333
    new-instance v0, Lcom/amap/api/mapcore2d/bg;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bg;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/mapcore2d/ag;

    .line 1334
    const/16 v0, 0xde

    const/16 v2, 0xd7

    const/16 v3, 0xd6

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->setBackgroundColor(I)V

    .line 1336
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/mapcore2d/m$a;)V

    .line 1338
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/k;->a(Lcom/amap/api/mapcore2d/k$a;)V

    .line 1339
    new-instance v0, Lcom/amap/api/mapcore2d/a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/a;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    .line 1340
    new-instance v0, Lcom/amap/api/mapcore2d/c;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/c;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/c;

    .line 1341
    new-instance v0, Lcom/amap/api/mapcore2d/j;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    .line 1342
    new-instance v0, Lcom/amap/api/mapcore2d/br;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/br;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    .line 1343
    new-instance v0, Lcom/amap/api/mapcore2d/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    sget v3, Lcom/amap/api/mapcore2d/p;->i:I

    invoke-direct {v0, v2, p0, v3}, Lcom/amap/api/mapcore2d/ay;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    .line 1345
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/br;->a(Z)V

    .line 1346
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    .line 1348
    new-instance v0, Lcom/amap/api/mapcore2d/ap;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore2d/ap;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1349
    new-instance v0, Lcom/amap/api/mapcore2d/bx;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bx;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    .line 1352
    new-instance v0, Lcom/amap/api/mapcore2d/cb;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/cb;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ap;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    .line 1353
    new-instance v0, Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/at;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    .line 1354
    new-instance v0, Lcom/amap/api/mapcore2d/ao;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/ao;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    .line 1355
    new-instance v0, Lcom/amap/api/mapcore2d/ca;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/ca;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    .line 1356
    new-instance v0, Lcom/amap/api/mapcore2d/bi;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/mapcore2d/bi;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    .line 1357
    new-instance v0, Lcom/amap/api/mapcore2d/o;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/o;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    .line 1358
    new-instance v0, Lcom/amap/api/mapcore2d/as;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p0}, Lcom/amap/api/mapcore2d/as;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    .line 1359
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1362
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->V()V

    .line 1363
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1364
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    new-instance v2, Lcom/amap/api/mapcore2d/at$a;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore2d/at$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1373
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1379
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v0, v10}, Lcom/amap/api/mapcore2d/o;->setVisibility(I)V

    .line 1388
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1393
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    .line 1395
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    sget v1, Lcom/amap/api/mapcore2d/g;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->setId(I)V

    .line 1397
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1399
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 1400
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    .line 1401
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1407
    :cond_1
    :goto_1
    return-void

    .line 1385
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v7}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1404
    :catch_1
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v7}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 1717
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1720
    new-instance v2, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 1721
    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 1722
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v2, v2, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 1723
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/aa;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 1725
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps2d/model/Marker;)V

    .line 1731
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    return-void
.end method

.method private a(ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 3

    .prologue
    .line 2594
    const-string v0, "cameraChangeFinish"

    .line 2595
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-nez v1, :cond_1

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2601
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2604
    if-nez p2, :cond_2

    .line 2606
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->g()Lcom/amap/api/maps2d/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 2612
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2614
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2608
    :catch_1
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    return p1
.end method

.method private aa()V
    .locals 12

    .prologue
    const/16 v0, 0x78

    const/16 v1, 0x64

    const/16 v2, 0x32

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2649
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    if-nez v3, :cond_1

    .line 2696
    :cond_0
    :goto_0
    return-void

    .line 2652
    :cond_1
    iget v3, p0, Lcom/amap/api/mapcore2d/b;->l:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 2653
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v3

    .line 2654
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v4

    .line 2655
    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2657
    if-le v5, v0, :cond_9

    .line 2658
    const/16 v6, 0xa0

    if-gt v5, v6, :cond_4

    .line 2659
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x1e0

    if-gt v2, v3, :cond_3

    .line 2677
    :goto_1
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->l:F

    .line 2681
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2682
    if-eqz v0, :cond_0

    .line 2685
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v1

    .line 2687
    iget v2, p0, Lcom/amap/api/mapcore2d/b;->l:F

    .line 2688
    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v4, v8

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    mul-double/2addr v4, v8

    const-wide v6, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    float-to-double v8, v1

    .line 2689
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, v0

    .line 2690
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:[I

    float-to-int v3, v1

    aget v0, v0, v3

    int-to-double v6, v0

    float-to-double v2, v2

    mul-double/2addr v2, v4

    div-double v2, v6, v2

    double-to-int v0, v2

    .line 2691
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->r:[I

    float-to-int v1, v1

    aget v1, v2, v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ck;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 2693
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bi;->a(I)V

    .line 2694
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bi;->a(Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->invalidate()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2662
    goto :goto_1

    .line 2664
    :cond_4
    const/16 v0, 0xf0

    if-gt v5, v0, :cond_6

    .line 2665
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_5

    .line 2666
    const/16 v0, 0x3c

    goto :goto_1

    .line 2668
    :cond_5
    const/16 v0, 0x46

    goto :goto_1

    .line 2670
    :cond_6
    const/16 v0, 0x140

    if-gt v5, v0, :cond_7

    move v0, v2

    .line 2671
    goto :goto_1

    .line 2672
    :cond_7
    const/16 v0, 0x1e0

    if-gt v5, v0, :cond_8

    move v0, v2

    .line 2673
    goto :goto_1

    .line 2675
    :cond_8
    const/16 v0, 0x28

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method private ab()Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 2801
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2802
    if-nez v0, :cond_0

    .line 2803
    const/4 v0, 0x0

    .line 2808
    :goto_0
    return-object v0

    .line 2805
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v2

    .line 2806
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v4

    .line 2807
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method private ac()Lcom/amap/api/mapcore2d/ad;
    .locals 4

    .prologue
    .line 2812
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2813
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 2814
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2815
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2816
    return-object v1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->aa()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2020
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/ba$a;->a(Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 2021
    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->am:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2024
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    if-eqz v1, :cond_1

    .line 2025
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 2027
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2028
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Landroid/view/MotionEvent;)V

    .line 2030
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 2031
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->X()V

    .line 2033
    :cond_3
    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ax;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore2d/b;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    return-object v0
.end method


# virtual methods
.method A()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ca;->c()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    return v0
.end method

.method public C()Lcom/amap/api/mapcore2d/u;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v0, :cond_1

    .line 1427
    :cond_0
    const/4 v0, 0x0

    .line 1429
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->f()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    goto :goto_0
.end method

.method public D()Lcom/amap/api/mapcore2d/ap;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    return-object v0
.end method

.method public E()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1522
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-nez v1, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return v0

    .line 1525
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1526
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v1

    .line 1527
    if-eqz v1, :cond_0

    .line 1528
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public F()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1661
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return v0

    .line 1669
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->i:Ljava/lang/String;

    .line 1671
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v1

    .line 1672
    if-eqz v1, :cond_0

    .line 1673
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public G()Lcom/amap/api/mapcore2d/ba;
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    return-object v0
.end method

.method public J()F
    .locals 1

    .prologue
    .line 1968
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    return v0
.end method

.method public K()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1972
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    .line 1973
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    .line 1974
    return-void
.end method

.method public L()I
    .locals 1

    .prologue
    .line 2589
    const/4 v0, 0x0

    return v0
.end method

.method protected M()V
    .locals 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2626
    return-void
.end method

.method N()V
    .locals 2

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2640
    return-void
.end method

.method public O()V
    .locals 1

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 2822
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    .line 2823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2825
    :cond_0
    return-void
.end method

.method public P()V
    .locals 0

    .prologue
    .line 2833
    return-void
.end method

.method public Q()V
    .locals 2

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2838
    return-void
.end method

.method public R()V
    .locals 1

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2846
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->postInvalidate()V

    .line 2847
    return-void
.end method

.method public S()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2851
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2852
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "\u5730\u56fe\u672a\u521d\u59cb\u5316\u5b8c\u6210\uff01"

    .line 2851
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/Object;)V

    .line 2853
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T()V
    .locals 1

    .prologue
    .line 2899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    .line 2900
    return-void
.end method

.method public a(F)F
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float p1, v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float p1, v0

    .line 475
    :cond_1
    return p1
.end method

.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/amap/api/mapcore2d/bd;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bd;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 731
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(I)V

    .line 732
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/util/List;)V

    .line 733
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(Z)V

    .line 734
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->b(F)V

    .line 735
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(F)V

    .line 736
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bd;->b(I)V

    .line 738
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 743
    :goto_0
    return-object v0

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 742
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/af;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Lcom/amap/api/mapcore2d/be;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/be;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 666
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(I)V

    .line 667
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isDottedLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->b(Z)V

    .line 668
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->c(Z)V

    .line 669
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/List;)V

    .line 670
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(Z)V

    .line 671
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->b(F)V

    .line 672
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->a(F)V

    .line 674
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_0

    .line 675
    const/4 v0, 0x0

    .line 679
    :goto_0
    return-object v0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 678
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/x;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Lcom/amap/api/mapcore2d/n;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/n;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 686
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->b(I)V

    .line 687
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 688
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(Z)V

    .line 689
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->b(F)V

    .line 690
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(F)V

    .line 691
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/n;->a(I)V

    .line 692
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/n;->a(D)V

    .line 694
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 699
    :goto_0
    return-object v0

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 698
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Lcom/amap/api/mapcore2d/v;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/v;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 707
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 708
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 707
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/v;->b(FF)V

    .line 709
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->c(F)V

    .line 710
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 711
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 710
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/v;->a(FF)V

    .line 712
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 713
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 714
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)V

    .line 715
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->d(F)V

    .line 716
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(Z)V

    .line 717
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/v;->a(F)V

    .line 719
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/mapcore2d/ac;)V

    .line 723
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Lcom/amap/api/mapcore2d/ax;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/ax;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/as;)V

    .line 751
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/aa;)V

    .line 752
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 753
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    return-object v1
.end method

.method public a(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2950
    new-instance v0, Lcom/amap/api/mapcore2d/bm;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/mapcore2d/bm;-><init>(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/as;)V

    .line 2952
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/ai;)V

    .line 2953
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2954
    new-instance v1, Lcom/amap/api/maps2d/model/Text;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Text;-><init>(Lcom/amap/api/mapcore2d/ai;)V

    return-object v1
.end method

.method public a(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    .line 773
    const/4 v0, 0x0

    .line 783
    :goto_0
    return-object v0

    .line 775
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/bq;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bq;-><init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/br;Lcom/amap/api/mapcore2d/au;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    .line 781
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/br;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 782
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 783
    new-instance v1, Lcom/amap/api/maps2d/model/TileOverlay;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/TileOverlay;-><init>(Lcom/amap/api/mapcore2d/aj;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(DDLcom/amap/api/mapcore2d/ad;)V
    .locals 7

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 2750
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    new-instance v1, Lcom/amap/api/mapcore2d/u;

    mul-double v2, p1, v4

    double-to-int v2, v2

    mul-double/2addr v4, p3

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2752
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v1

    iput v1, p5, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2753
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v0

    iput v0, p5, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2755
    return-void
.end method

.method public a(DDLcom/amap/api/mapcore2d/r;)V
    .locals 7

    .prologue
    .line 2735
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    .line 2736
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2737
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2738
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 2739
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 2742
    if-eqz p5, :cond_0

    .line 2743
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    iput-wide v2, p5, Lcom/amap/api/mapcore2d/r;->a:D

    .line 2744
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    iput-wide v0, p5, Lcom/amap/api/mapcore2d/r;->b:D

    .line 2746
    :cond_0
    return-void
.end method

.method public a(FLandroid/graphics/Point;Z)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 611
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-nez v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    .line 616
    add-float v1, v0, p1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ck;->b(F)F

    move-result v1

    sub-float v0, v1, v0

    .line 617
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 622
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ac()Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    .line 625
    if-eqz p2, :cond_0

    .line 626
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 627
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/ad;)V

    .line 628
    iget v2, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v3, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    sub-int/2addr v2, v3

    .line 629
    iget v3, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v4, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    sub-int/2addr v3, v4

    .line 630
    int-to-double v4, v2

    float-to-double v6, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    int-to-double v6, v2

    sub-double/2addr v4, v6

    double-to-int v2, v4

    .line 631
    int-to-double v4, v3

    float-to-double v6, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v3, v4

    .line 632
    iget v4, v1, Lcom/amap/api/mapcore2d/ad;->a:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 633
    iget v1, v1, Lcom/amap/api/mapcore2d/ad;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 634
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget v2, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-double v2, v2

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-double v4, v0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 635
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 636
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 637
    if-eqz p3, :cond_2

    .line 638
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 641
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 821
    if-ne p1, v0, :cond_0

    .line 822
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->t:I

    .line 823
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    .line 824
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ca;->a(Z)V

    .line 830
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 831
    return-void

    .line 826
    :cond_0
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->t:I

    .line 827
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    .line 828
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ca;->a(Z)V

    goto :goto_0
.end method

.method public a(IILcom/amap/api/mapcore2d/r;)V
    .locals 7

    .prologue
    .line 2707
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2708
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2712
    if-eqz p3, :cond_0

    .line 2713
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v2

    .line 2714
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    .line 2715
    iput-wide v2, p3, Lcom/amap/api/mapcore2d/r;->b:D

    .line 2716
    iput-wide v0, p3, Lcom/amap/api/mapcore2d/r;->a:D

    .line 2718
    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 406
    const-string v1, "showMyLocationOverlay"

    .line 407
    if-nez p1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 411
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-nez v0, :cond_5

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/maps2d/model/LatLng;D)V

    .line 431
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_4

    .line 432
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 433
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 434
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 435
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 436
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 440
    :cond_4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    goto :goto_0

    .line 418
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_7

    .line 420
    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    .line 423
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 424
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v0

    .line 423
    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore2d/aa;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x2

    const/high16 v5, -0x1000000

    .line 984
    const-string v1, "showInfoWindow"

    .line 986
    if-nez p1, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 994
    new-instance v3, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v3, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    .line 995
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_3

    .line 996
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 999
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    const-string v4, "infowindow_bg2d.9.png"

    invoke-static {v0, v4}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_5

    .line 1008
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 1010
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1011
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1012
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1030
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 1031
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->e()Lcom/amap/api/mapcore2d/r;

    move-result-object v5

    .line 1034
    if-eqz v0, :cond_8

    .line 1035
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1036
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1038
    :goto_3
    new-instance v0, Lcom/amap/api/mapcore2d/at$a;

    .line 1039
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v6, v5, Lcom/amap/api/mapcore2d/r;->a:D

    double-to-int v4, v6

    neg-int v4, v4

    .line 1040
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->n()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-wide v6, v5, Lcom/amap/api/mapcore2d/r;->b:D

    double-to-int v5, v6

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x51

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/at$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1043
    check-cast p1, Lcom/amap/api/mapcore2d/ax;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    .line 1044
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore2d/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1004
    :catch_0
    move-exception v0

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1015
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1016
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1018
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1021
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1022
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1024
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1025
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1026
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public a(Lcom/amap/api/mapcore2d/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/a;->a(Lcom/amap/api/mapcore2d/l;)V

    .line 527
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->Q()V

    .line 528
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x1

    .line 550
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v2, "the map must have a size"

    .line 551
    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/Object;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-nez v0, :cond_3

    .line 608
    :cond_1
    :goto_1
    return-void

    .line 552
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 557
    :cond_3
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 558
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->g()V

    .line 562
    :cond_4
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 563
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    if-eqz v0, :cond_5

    .line 564
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->G:Z

    .line 566
    :cond_5
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->h:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_6

    .line 567
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 568
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_1

    .line 571
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget v1, p1, Lcom/amap/api/mapcore2d/l;->b:F

    float-to-int v1, v1

    iget v2, p1, Lcom/amap/api/mapcore2d/l;->c:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    .line 576
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto :goto_1

    .line 577
    :cond_6
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->b:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_7

    .line 578
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->c()Z

    goto :goto_1

    .line 579
    :cond_7
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->e:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_8

    .line 580
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->d()Z

    goto :goto_1

    .line 581
    :cond_8
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->f:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_9

    .line 582
    iget v0, p1, Lcom/amap/api/mapcore2d/l;->d:F

    .line 583
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    goto :goto_1

    .line 584
    :cond_9
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->g:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_a

    .line 585
    iget v0, p1, Lcom/amap/api/mapcore2d/l;->e:F

    .line 586
    iget-object v2, p1, Lcom/amap/api/mapcore2d/l;->k:Landroid/graphics/Point;

    .line 587
    invoke-virtual {p0, v0, v2, v1}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto :goto_1

    .line 588
    :cond_a
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->i:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_b

    .line 589
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 590
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    .line 591
    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 592
    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 593
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    new-instance v3, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    goto/16 :goto_1

    .line 594
    :cond_b
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->c:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_c

    .line 595
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 596
    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 597
    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 598
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    new-instance v3, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    goto/16 :goto_1

    .line 599
    :cond_c
    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    if-eq v0, v2, :cond_d

    iget-object v0, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->k:Lcom/amap/api/mapcore2d/l$a;

    if-ne v0, v2, :cond_e

    .line 601
    :cond_d
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 602
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;ZJ)V

    goto/16 :goto_1

    .line 605
    :cond_e
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/l;->l:Z

    .line 606
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V

    .line 543
    return-void
.end method

.method protected a(Lcom/amap/api/mapcore2d/l;ZJ)V
    .locals 15

    .prologue
    .line 2859
    const-string v8, "newLatLngBoundsWithSize"

    .line 2860
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-nez v2, :cond_0

    .line 2883
    :goto_0
    return-void

    .line 2864
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/mapcore2d/l;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 2865
    iget-object v3, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v3, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v3, v4

    .line 2866
    iget-object v4, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v6, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 2867
    iget-object v5, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    iget-object v5, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    double-to-int v5, v6

    .line 2868
    iget-object v6, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    iget-object v2, v2, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    double-to-int v2, v6

    .line 2869
    new-instance v6, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v6, v5, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 2870
    if-eqz p2, :cond_1

    .line 2871
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    move-wide/from16 v0, p3

    long-to-int v5, v0

    invoke-virtual {v2, v6, v5}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;I)V

    .line 2875
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/amap/api/mapcore2d/l;->i:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/amap/api/mapcore2d/l;->j:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/amap/api/mapcore2d/l;->h:I

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/ap;->a(FFIII)V

    .line 2879
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/k;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2881
    :catch_0
    move-exception v2

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v3, v8}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2873
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 979
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    .line 980
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 3

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2905
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/b$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore2d/b$b;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/content/Context;Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    .line 2907
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2908
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2915
    :cond_0
    :goto_0
    return-void

    .line 2909
    :catch_0
    move-exception v0

    .line 2910
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "removecache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    .line 2622
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 973
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    .line 974
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 936
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    .line 937
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    .line 968
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 948
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    .line 950
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 1190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 1191
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 942
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    .line 943
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 955
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    .line 956
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    .line 962
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    .line 1089
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/LocationSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    .line 910
    if-eqz p1, :cond_0

    .line 911
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->o()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->o()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    .line 891
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public a(FF)Z
    .locals 2

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    .line 2219
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    if-eqz v0, :cond_0

    .line 2220
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    .line 2221
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    .line 2223
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2224
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    return v0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2266
    const-string v3, "onScale"

    .line 2268
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 2280
    :goto_0
    return v0

    .line 2272
    :catch_0
    move-exception v2

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iput-boolean v0, v2, Lcom/amap/api/mapcore2d/ay$a;->c:Z

    .line 2275
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 2276
    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/PointF;FF)V

    .line 2277
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    .line 2278
    const-wide/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/mapcore2d/b;->postInvalidateDelayed(J)V

    .line 2279
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    move v0, v1

    .line 2280
    goto :goto_0
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1

    .prologue
    .line 2245
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2302
    const-string v3, "startScale"

    .line 2304
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 2321
    :cond_0
    :goto_0
    return v0

    .line 2308
    :catch_0
    move-exception v2

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 2317
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 2318
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay$a;->a(Z)V

    .line 2319
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/ay$a;->c:Z

    .line 2320
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    move v0, v1

    .line 2321
    goto :goto_0

    .line 2315
    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 449
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/t;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2553
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2554
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2555
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2556
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2557
    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2558
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 2559
    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 2560
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    .line 2561
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2562
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2564
    return-object v0
.end method

.method public b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/ax;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Lcom/amap/api/mapcore2d/ax;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/ax;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/as;)V

    .line 761
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/aa;)V

    .line 762
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 763
    return-object v0
.end method

.method public b()Lcom/amap/api/mapcore2d/ay;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    return-object v0
.end method

.method public b(DDLcom/amap/api/mapcore2d/ad;)V
    .locals 7

    .prologue
    .line 2781
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    .line 2782
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2783
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/q;->a(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2784
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 2785
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 2789
    if-eqz p5, :cond_0

    .line 2790
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p5, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 2791
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p5, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 2793
    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bb;->a(F)V

    .line 883
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ca;->a(I)V

    .line 1202
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ca;->invalidate()V

    .line 1203
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->invalidate()V

    .line 1207
    :cond_0
    return-void
.end method

.method public b(IILcom/amap/api/mapcore2d/r;)V
    .locals 2

    .prologue
    .line 2773
    if-eqz p3, :cond_0

    .line 2774
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/amap/api/mapcore2d/r;->a:D

    .line 2775
    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/amap/api/mapcore2d/r;->b:D

    .line 2777
    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V

    .line 535
    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    .line 841
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 842
    return-void
.end method

.method public b(FLandroid/graphics/PointF;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2285
    const-string v1, "endScale"

    .line 2287
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->av:Z

    .line 2289
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 2296
    :goto_0
    return v0

    .line 2293
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 2296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 3

    .prologue
    .line 2250
    const-string v1, "onScale"

    .line 2252
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 2253
    const/4 v0, 0x0

    .line 2261
    :goto_0
    return v0

    .line 2256
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->at:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2260
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2261
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/aa;)Z
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ax;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1053
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 454
    const-string v2, "removeMarker"

    .line 455
    const/4 v1, 0x0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aa;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_0
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/as;->b(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    .line 464
    :goto_1
    return v0

    .line 459
    :catch_0
    move-exception v0

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 464
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v0, :cond_1

    .line 377
    :cond_0
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v0

    goto :goto_0
.end method

.method protected c(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2568
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2569
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2570
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2571
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2572
    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2573
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 2574
    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 2575
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 2576
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2577
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2578
    return-object v0
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 1964
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->au:F

    .line 1965
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cb;->a(I)V

    .line 1213
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cb;->invalidate()V

    .line 1215
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    if-nez v0, :cond_1

    .line 2895
    :cond_0
    :goto_0
    return-void

    .line 2890
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2894
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_3

    .line 852
    if-eqz p1, :cond_1

    .line 853
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/c;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/LocationSource;->activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V

    .line 854
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    .line 855
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    .line 870
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    .line 871
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V

    .line 875
    :goto_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    .line 876
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()V

    .line 861
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    .line 863
    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->v:Landroid/location/Location;

    .line 864
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps2d/LocationSource;->deactivate()V

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ao;->a(Z)V

    goto :goto_0

    .line 873
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1751
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    sub-int/2addr v0, v1

    .line 1753
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    sub-int/2addr v1, v2

    .line 1754
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    .line 1755
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    .line 1756
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1760
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 1761
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 1762
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 1763
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 1772
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$d;->b(Lcom/amap/api/mapcore2d/u;)V

    goto :goto_0

    .line 1771
    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v0, :cond_1

    .line 385
    :cond_0
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 1093
    if-eqz p1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->setVisibility(I)V

    .line 1098
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->setVisibility(I)V

    goto :goto_0
.end method

.method public d(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2230
    const-string v1, "onScale"

    .line 2232
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 2240
    :goto_0
    return v3

    .line 2236
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->c(F)V

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V

    .line 1107
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ao;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 480
    const-string v2, "getZoomLevel"

    .line 482
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 486
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->e()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 1111
    if-eqz p1, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setVisibility(I)V

    .line 1116
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 496
    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 500
    :goto_0
    return-object v0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v1

    .line 500
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1120
    if-eqz p1, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bi;->setVisibility(I)V

    .line 1122
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->N()V

    .line 1128
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bi;->a(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bi;->a(I)V

    .line 1126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bi;->setVisibility(I)V

    goto :goto_0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/p;->c:I

    int-to-float v0, v0

    .line 508
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public h(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1452
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    .line 1454
    if-ne v0, p1, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    if-nez p1, :cond_2

    .line 1464
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1465
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 1464
    invoke-virtual {v0, v1, v4}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1467
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1468
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    .line 1467
    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1472
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto :goto_0

    .line 1477
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1481
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    .line 1483
    if-eqz v0, :cond_3

    .line 1484
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1485
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 1484
    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1489
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto :goto_0

    .line 1492
    :cond_3
    new-instance v0, Lcom/amap/api/mapcore2d/am;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    .line 1493
    new-instance v1, Lcom/amap/api/mapcore2d/bs;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 1494
    new-instance v1, Lcom/amap/api/mapcore2d/b$4;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/b$4;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 1503
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 1504
    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 1506
    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 1507
    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 1509
    sget v1, Lcom/amap/api/mapcore2d/p;->c:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->c:I

    .line 1510
    sget v1, Lcom/amap/api/mapcore2d/p;->d:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->d:I

    .line 1511
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z

    .line 1512
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 1513
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 1512
    invoke-virtual {v0, v1, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1517
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto/16 :goto_0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/p;->d:I

    int-to-float v0, v0

    .line 518
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1535
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->F()Z

    move-result v0

    .line 1536
    if-ne p1, v0, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->i:Ljava/lang/String;

    .line 1556
    if-nez p1, :cond_2

    .line 1557
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1558
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto :goto_0

    .line 1563
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v1

    .line 1564
    if-eqz v1, :cond_3

    .line 1565
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0, v6}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1566
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto :goto_0

    .line 1628
    :cond_3
    new-instance v1, Lcom/amap/api/mapcore2d/am;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->K:Lcom/amap/api/mapcore2d/au;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    .line 1629
    new-instance v2, Lcom/amap/api/mapcore2d/bs;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->m:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    iput-object v2, v1, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 1630
    iput-boolean v6, v1, Lcom/amap/api/mapcore2d/am;->g:Z

    .line 1631
    const-wide/32 v2, 0x1d4c0

    iput-wide v2, v1, Lcom/amap/api/mapcore2d/am;->i:J

    .line 1633
    new-instance v2, Lcom/amap/api/mapcore2d/b$5;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/b$5;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, v1, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 1644
    iput-object v0, v1, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 1645
    iput-boolean v5, v1, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 1647
    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 1648
    iput-boolean v5, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 1649
    const/16 v2, 0x12

    iput v2, v1, Lcom/amap/api/mapcore2d/am;->c:I

    .line 1650
    const/16 v2, 0x9

    iput v2, v1, Lcom/amap/api/mapcore2d/am;->d:I

    .line 1651
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z

    .line 1652
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, v0, v6}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 1653
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto/16 :goto_0
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 648
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/j;->a(Z)V

    .line 653
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V

    .line 654
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    .line 657
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    goto :goto_0
.end method

.method public k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    const-string v1, "clear"

    .line 790
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 793
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->a()V

    .line 797
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->c()V

    .line 798
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->b()V

    .line 799
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb;->a()V

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 816
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->t:I

    return v0
.end method

.method public m()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->F()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->y:Z

    return v0
.end method

.method public o()Lcom/amap/api/mapcore2d/bb;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/bb;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1746
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1747
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2333
    const-string v1, "onDoubleTap"

    .line 2335
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2349
    :cond_0
    :goto_0
    return v3

    .line 2339
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->s:Z

    if-eqz v0, :cond_2

    .line 2342
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->a(II)Z

    .line 2344
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    if-gt v0, v3, :cond_0

    .line 2347
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    .line 2348
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->a(F)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2354
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2052
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2053
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2054
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/j;->a(Z)V

    .line 2055
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    .line 2057
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2059
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->aH:Z

    .line 2060
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2061
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 2062
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    .line 2066
    :goto_0
    return v3

    .line 2064
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 1925
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->I()Landroid/graphics/Paint;

    move-result-object v5

    .line 1926
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->H()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1927
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 1928
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    .line 1929
    if-le v0, v1, :cond_4

    move v12, v0

    .line 1932
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 1933
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getTop()I

    move-result v0

    int-to-float v8, v0

    .line 1934
    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_0

    .line 1936
    int-to-float v2, v13

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    int-to-float v4, v13

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1937
    int-to-float v7, v13

    int-to-float v9, v13

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v10, v8, v0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1934
    add-int/lit16 v0, v13, 0x100

    move v13, v0

    goto :goto_1

    .line 1941
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    if-eqz v0, :cond_1

    .line 1942
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->setDrawingCacheEnabled(Z)V

    .line 1943
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->buildDrawingCache()V

    .line 1944
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1945
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1946
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1947
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1948
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(II)V

    .line 1952
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->at:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aw:F

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->ax:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    .line 1953
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1954
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1956
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    if-nez v0, :cond_3

    .line 1957
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ae:Z

    .line 1961
    :cond_3
    return-void

    :cond_4
    move v12, v1

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2079
    const-string v1, "onFling"

    .line 2080
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    if-nez v0, :cond_0

    .line 2081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/ba$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return v9

    .line 2084
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2087
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2103
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/widget/Scroller;

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ar:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->as:I

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/amap/api/mapcore2d/b;->ay:I

    neg-int v5, v5

    iget v6, p0, Lcom/amap/api/mapcore2d/b;->ay:I

    iget v7, p0, Lcom/amap/api/mapcore2d/b;->az:I

    neg-int v7, v7

    iget v8, p0, Lcom/amap/api/mapcore2d/b;->az:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 2091
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1789
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v2, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v0

    .line 1792
    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 1793
    goto :goto_0

    .line 1795
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/mapcore2d/ay$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1796
    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/mapcore2d/ap;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1801
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v2, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return v0

    .line 1804
    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 1805
    goto :goto_0

    .line 1807
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/mapcore2d/ay$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1808
    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/mapcore2d/ap;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 2112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2113
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    if-eqz v0, :cond_0

    .line 2114
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 2115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 2116
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2117
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    .line 2120
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_2

    .line 2133
    :cond_1
    :goto_0
    return-void

    .line 2123
    :cond_2
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    .line 2124
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    .line 2125
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2127
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2128
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/aa;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/mapcore2d/aa;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/as;->c(Lcom/amap/api/mapcore2d/aa;)V

    .line 2130
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps2d/model/Marker;)V

    .line 2131
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 0

    .prologue
    .line 1840
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1841
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1735
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1736
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1741
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2149
    const-string v1, "onScroll"

    .line 2150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/ba$a;->k:Z

    if-nez v0, :cond_0

    .line 2151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Lcom/amap/api/mapcore2d/ba$a;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/ba$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 2180
    :cond_0
    :goto_0
    return v6

    .line 2155
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->W:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2160
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    if-le v0, v6, :cond_3

    .line 2163
    iput-boolean v7, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    goto :goto_0

    .line 2174
    :cond_3
    iput-boolean v6, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2175
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2177
    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore2d/b;->a(II)V

    .line 2178
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2179
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 2188
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2363
    const-string v3, "onSingleTapConfirmed"

    .line 2364
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    if-nez v0, :cond_0

    move v0, v1

    .line 2436
    :goto_0
    return v0

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Landroid/view/MotionEvent;)Z

    .line 2368
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    .line 2369
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2371
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->W:Z

    .line 2372
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-eqz v0, :cond_2

    .line 2373
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    move v0, v2

    .line 2374
    goto :goto_0

    .line 2377
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2378
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 2379
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2380
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 2381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 2380
    invoke-virtual {v1, v0, v4, v5}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    if-eqz v0, :cond_4

    .line 2383
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    .line 2384
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->s()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 2385
    goto :goto_0

    .line 2387
    :cond_3
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    .line 2388
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps2d/model/Marker;)V

    move v0, v2

    .line 2389
    goto :goto_0

    .line 2392
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2393
    if-eqz v0, :cond_a

    .line 2394
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v1

    .line 2395
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->s()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v2

    .line 2396
    goto/16 :goto_0

    .line 2398
    :cond_6
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    .line 2400
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    if-eqz v4, :cond_9

    .line 2401
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->R:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    invoke-interface {v4, v0}, Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z

    move-result v0

    .line 2402
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->b()I

    move-result v0

    if-gtz v0, :cond_8

    .line 2403
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/as;->c(Lcom/amap/api/mapcore2d/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    .line 2404
    goto/16 :goto_0

    .line 2408
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2409
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->q()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2410
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2411
    if-eqz v0, :cond_9

    .line 2412
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 2413
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ck;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 2412
    invoke-virtual {v4, v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 2414
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    .line 2415
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2423
    :cond_9
    :goto_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/aa;)V

    .line 2424
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/as;->c(Lcom/amap/api/mapcore2d/aa;)V

    move v0, v2

    .line 2425
    goto/16 :goto_0

    .line 2420
    :catch_0
    move-exception v0

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2433
    :catch_1
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 2434
    goto/16 :goto_0

    .line 2427
    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    if-eqz v0, :cond_b

    .line 2428
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 2429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v1, v4, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 2430
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v8, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v4}, Lcom/amap/api/maps2d/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_b
    move v0, v2

    .line 2436
    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2194
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1845
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1846
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1847
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/Point;)V

    .line 1848
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/ay$d;->a(II)V

    .line 1849
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->a()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->b()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ap;->a()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    .line 1851
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ap;->b()F

    move-result v2

    .line 1850
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->a(FF)V

    .line 1852
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/ap;->a(F)V

    .line 1853
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/ap;->b(F)V

    .line 1855
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->u()V

    .line 1856
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aI:Lcom/amap/api/mapcore2d/b$a;

    if-eqz v0, :cond_1

    .line 1857
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aI:Lcom/amap/api/mapcore2d/b$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore2d/b$a;->a(IIII)V

    .line 1859
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1813
    sget-boolean v1, Lcom/amap/api/mapcore2d/p;->p:Z

    if-nez v1, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return v0

    .line 1816
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    .line 1819
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    if-nez v1, :cond_2

    .line 1820
    const/4 v0, 0x0

    goto :goto_0

    .line 1823
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    if-eqz v1, :cond_3

    .line 1824
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1825
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1826
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1827
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1828
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1831
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1834
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/view/MotionEvent;)Z

    .line 1835
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1784
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1785
    return-void
.end method

.method public p()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/mapcore2d/c;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/c;->a:Landroid/location/Location;

    .line 903
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/amap/api/mapcore2d/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    return-object v0
.end method

.method public r()Lcom/amap/api/mapcore2d/ag;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/mapcore2d/ag;

    return-object v0
.end method

.method public s()Lcom/amap/api/mapcore2d/bf;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x0

    .line 930
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 0

    .prologue
    .line 1778
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    .line 1779
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1780
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1058
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1060
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1061
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/at;->removeView(Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1067
    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 1069
    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    .line 1071
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Landroid/view/View;

    .line 1077
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/at$a;

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/mapcore2d/ax;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ax;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->a()V

    .line 1083
    :cond_1
    return-void
.end method

.method public v()V
    .locals 3

    .prologue
    .line 1132
    const-string v1, "destroy"

    .line 1134
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/Timer;

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Ljava/util/TimerTask;

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1146
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1149
    :cond_3
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/m;->b(Lcom/amap/api/mapcore2d/m$a;)V

    .line 1150
    invoke-static {}, Lcom/amap/api/mapcore2d/bj;->a()Lcom/amap/api/mapcore2d/bj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bj;->a(Lcom/amap/api/mapcore2d/bj$a;)V

    .line 1151
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/k;->b(Lcom/amap/api/mapcore2d/k$a;)V

    .line 1152
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cb;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cb;->a()V

    .line 1153
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->a()V

    .line 1154
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/ca;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ca;->a()V

    .line 1155
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Lcom/amap/api/mapcore2d/ao;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ao;->a()V

    .line 1156
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/o;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/o;->a()V

    .line 1157
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    .line 1158
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->f()V

    .line 1159
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->S:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->removeAllViews()V

    .line 1163
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 1164
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    if-eqz v0, :cond_5

    .line 1165
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->f()V

    .line 1167
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_6

    .line 1168
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->b()V

    .line 1169
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->W()V

    .line 1173
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/maps2d/LocationSource;

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    .line 1176
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    .line 1177
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    .line 1178
    invoke-static {}, Lcom/amap/api/mapcore2d/dd;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public w()F
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1219
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 1220
    new-instance v1, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 1221
    new-instance v2, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 1222
    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 1223
    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 1224
    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v1, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v2, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {v3, v1}, Lcom/amap/api/mapcore2d/ck;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D

    move-result-wide v2

    .line 1227
    int-to-double v0, v0

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method

.method public x()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->c()V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->e()V

    .line 1243
    :cond_1
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->d()V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->d()V

    .line 1253
    :cond_1
    return-void
.end method
