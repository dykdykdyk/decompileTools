.class final Landroid/support/a/a/p;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# static fields
.field private static final j:Landroid/graphics/Matrix;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Ljava/lang/String;

.field final g:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Matrix;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/PathMeasure;

.field private o:I

.field private final p:Landroid/support/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 913
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->k:Landroid/graphics/Matrix;

    .line 924
    iput v1, p0, Landroid/support/a/a/p;->a:F

    .line 925
    iput v1, p0, Landroid/support/a/a/p;->b:F

    .line 926
    iput v1, p0, Landroid/support/a/a/p;->c:F

    .line 927
    iput v1, p0, Landroid/support/a/a/p;->d:F

    .line 928
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/a/a/p;->e:I

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/p;->f:Ljava/lang/String;

    .line 931
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    .line 934
    new-instance v0, Landroid/support/a/a/n;

    invoke-direct {v0}, Landroid/support/a/a/n;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->p:Landroid/support/a/a/n;

    .line 935
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->h:Landroid/graphics/Path;

    .line 936
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    .line 937
    return-void
.end method

.method public constructor <init>(Landroid/support/a/a/p;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->k:Landroid/graphics/Matrix;

    .line 924
    iput v1, p0, Landroid/support/a/a/p;->a:F

    .line 925
    iput v1, p0, Landroid/support/a/a/p;->b:F

    .line 926
    iput v1, p0, Landroid/support/a/a/p;->c:F

    .line 927
    iput v1, p0, Landroid/support/a/a/p;->d:F

    .line 928
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/a/a/p;->e:I

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/p;->f:Ljava/lang/String;

    .line 931
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    .line 959
    new-instance v0, Landroid/support/a/a/n;

    iget-object v1, p1, Landroid/support/a/a/p;->p:Landroid/support/a/a/n;

    iget-object v2, p0, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/support/a/a/n;-><init>(Landroid/support/a/a/n;Landroid/support/v4/util/ArrayMap;)V

    iput-object v0, p0, Landroid/support/a/a/p;->p:Landroid/support/a/a/n;

    .line 960
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/a/a/p;->h:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/a/a/p;->h:Landroid/graphics/Path;

    .line 961
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    .line 962
    iget v0, p1, Landroid/support/a/a/p;->a:F

    iput v0, p0, Landroid/support/a/a/p;->a:F

    .line 963
    iget v0, p1, Landroid/support/a/a/p;->b:F

    iput v0, p0, Landroid/support/a/a/p;->b:F

    .line 964
    iget v0, p1, Landroid/support/a/a/p;->c:F

    iput v0, p0, Landroid/support/a/a/p;->c:F

    .line 965
    iget v0, p1, Landroid/support/a/a/p;->d:F

    iput v0, p0, Landroid/support/a/a/p;->d:F

    .line 966
    iget v0, p1, Landroid/support/a/a/p;->o:I

    iput v0, p0, Landroid/support/a/a/p;->o:I

    .line 967
    iget v0, p1, Landroid/support/a/a/p;->e:I

    iput v0, p0, Landroid/support/a/a/p;->e:I

    .line 968
    iget-object v0, p1, Landroid/support/a/a/p;->f:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/a/a/p;->f:Ljava/lang/String;

    .line 969
    iget-object v0, p1, Landroid/support/a/a/p;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/support/a/a/p;->g:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/a/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/a/a/p;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Landroid/support/a/a/p;)Landroid/support/a/a/n;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/support/a/a/p;->p:Landroid/support/a/a/n;

    return-object v0
.end method

.method private a(Landroid/support/a/a/n;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 12

    .prologue
    .line 980
    .line 2130
    iget-object v2, p1, Landroid/support/a/a/n;->a:Landroid/graphics/Matrix;

    .line 980
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3130
    iget-object v2, p1, Landroid/support/a/a/n;->a:Landroid/graphics/Matrix;

    .line 4130
    iget-object v3, p1, Landroid/support/a/a/n;->j:Landroid/graphics/Matrix;

    .line 982
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 985
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 988
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    iget-object v2, p1, Landroid/support/a/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_d

    .line 989
    iget-object v2, p1, Landroid/support/a/a/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 990
    instance-of v2, v3, Landroid/support/a/a/n;

    if-eqz v2, :cond_1

    .line 991
    check-cast v3, Landroid/support/a/a/n;

    .line 5130
    iget-object v4, p1, Landroid/support/a/a/n;->a:Landroid/graphics/Matrix;

    move-object v2, p0

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 992
    invoke-direct/range {v2 .. v8}, Landroid/support/a/a/p;->a(Landroid/support/a/a/n;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 988
    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 994
    :cond_1
    instance-of v2, v3, Landroid/support/a/a/o;

    if-eqz v2, :cond_0

    .line 995
    check-cast v3, Landroid/support/a/a/o;

    .line 6010
    move/from16 v0, p4

    int-to-float v2, v0

    iget v4, p0, Landroid/support/a/a/p;->c:F

    div-float/2addr v2, v4

    .line 6011
    move/from16 v0, p5

    int-to-float v4, v0

    iget v5, p0, Landroid/support/a/a/p;->d:F

    div-float/2addr v4, v5

    .line 6012
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6130
    iget-object v6, p1, Landroid/support/a/a/n;->a:Landroid/graphics/Matrix;

    .line 6015
    iget-object v7, p0, Landroid/support/a/a/p;->k:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6016
    iget-object v7, p0, Landroid/support/a/a/p;->k:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 7111
    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 7112
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 7113
    const/4 v4, 0x0

    aget v4, v2, v4

    float-to-double v6, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    float-to-double v10, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 7114
    const/4 v6, 0x2

    aget v6, v2, v6

    float-to-double v6, v6

    const/4 v8, 0x3

    aget v8, v2, v8

    float-to-double v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 7115
    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v10, 0x2

    aget v10, v2, v10

    const/4 v11, 0x3

    aget v2, v2, v11

    .line 8097
    mul-float/2addr v2, v7

    mul-float v7, v8, v10

    sub-float v7, v2, v7

    .line 7117
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 7119
    const/4 v2, 0x0

    .line 7120
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 7121
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v4

    .line 6020
    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_0

    .line 6024
    iget-object v4, p0, Landroid/support/a/a/p;->h:Landroid/graphics/Path;

    invoke-virtual {v3, v4}, Landroid/support/a/a/o;->a(Landroid/graphics/Path;)V

    .line 6025
    iget-object v4, p0, Landroid/support/a/a/p;->h:Landroid/graphics/Path;

    .line 6027
    iget-object v6, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 6029
    invoke-virtual {v3}, Landroid/support/a/a/o;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6030
    iget-object v2, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/a/a/p;->k:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 6031
    iget-object v2, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    invoke-virtual {p3, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_1

    .line 6033
    :cond_3
    check-cast v3, Landroid/support/a/a/m;

    .line 6034
    iget v6, v3, Landroid/support/a/a/m;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    iget v6, v3, Landroid/support/a/a/m;->h:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 6035
    :cond_4
    iget v6, v3, Landroid/support/a/a/m;->g:F

    iget v7, v3, Landroid/support/a/a/m;->i:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    rem-float/2addr v6, v7

    .line 6036
    iget v7, v3, Landroid/support/a/a/m;->h:F

    iget v8, v3, Landroid/support/a/a/m;->i:F

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float/2addr v7, v8

    .line 6038
    iget-object v8, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    if-nez v8, :cond_5

    .line 6039
    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v8, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    .line 6041
    :cond_5
    iget-object v8, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Landroid/support/a/a/p;->h:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 6043
    iget-object v8, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 6044
    mul-float/2addr v6, v8

    .line 6045
    mul-float/2addr v7, v8

    .line 6046
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 6047
    cmpl-float v10, v6, v7

    if-lez v10, :cond_c

    .line 6048
    iget-object v10, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    const/4 v11, 0x1

    invoke-virtual {v10, v6, v8, v4, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 6049
    iget-object v6, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v7, v4, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 6053
    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 6055
    :cond_6
    iget-object v6, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/support/a/a/p;->k:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 6057
    iget v4, v3, Landroid/support/a/a/m;->c:I

    if-eqz v4, :cond_8

    .line 6058
    iget-object v4, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    if-nez v4, :cond_7

    .line 6059
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    .line 6060
    iget-object v4, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6061
    iget-object v4, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6064
    :cond_7
    iget-object v4, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    .line 6065
    iget v6, v3, Landroid/support/a/a/m;->c:I

    iget v7, v3, Landroid/support/a/a/m;->f:F

    invoke-static {v6, v7}, Landroid/support/a/a/k;->a(IF)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 6066
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6067
    iget-object v6, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    invoke-virtual {p3, v6, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6070
    :cond_8
    iget v4, v3, Landroid/support/a/a/m;->a:I

    if-eqz v4, :cond_0

    .line 6071
    iget-object v4, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    if-nez v4, :cond_9

    .line 6072
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    .line 6073
    iget-object v4, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6074
    iget-object v4, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6077
    :cond_9
    iget-object v4, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    .line 6078
    iget-object v6, v3, Landroid/support/a/a/m;->k:Landroid/graphics/Paint$Join;

    if-eqz v6, :cond_a

    .line 6079
    iget-object v6, v3, Landroid/support/a/a/m;->k:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 6082
    :cond_a
    iget-object v6, v3, Landroid/support/a/a/m;->j:Landroid/graphics/Paint$Cap;

    if-eqz v6, :cond_b

    .line 6083
    iget-object v6, v3, Landroid/support/a/a/m;->j:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6086
    :cond_b
    iget v6, v3, Landroid/support/a/a/m;->l:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 6087
    iget v6, v3, Landroid/support/a/a/m;->a:I

    iget v7, v3, Landroid/support/a/a/m;->d:F

    invoke-static {v6, v7}, Landroid/support/a/a/k;->a(IF)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 6088
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6089
    mul-float/2addr v2, v5

    .line 6090
    iget v3, v3, Landroid/support/a/a/m;->b:F

    mul-float/2addr v2, v3

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6091
    iget-object v2, p0, Landroid/support/a/a/p;->i:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 6051
    :cond_c
    iget-object v8, p0, Landroid/support/a/a/p;->n:Landroid/graphics/PathMeasure;

    const/4 v10, 0x1

    invoke-virtual {v8, v6, v7, v4, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_2

    .line 1000
    :cond_d
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 1001
    return-void

    .line 7111
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Landroid/support/a/a/p;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/support/a/a/p;->m:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic b(Landroid/support/a/a/p;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic c(Landroid/support/a/a/p;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/support/a/a/p;->l:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;II)V
    .locals 7

    .prologue
    .line 1005
    iget-object v1, p0, Landroid/support/a/a/p;->p:Landroid/support/a/a/n;

    sget-object v2, Landroid/support/a/a/p;->j:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/a/a/p;->a(Landroid/support/a/a/n;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1006
    return-void
.end method
