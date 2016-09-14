.class public Lcom/amap/api/mapcore2d/ay$a;
.super Ljava/lang/Object;
.source "Mediator.java"


# instance fields
.field public a:Lcom/amap/api/mapcore2d/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bk",
            "<",
            "Lcom/amap/api/mapcore2d/am;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field final synthetic k:Lcom/amap/api/mapcore2d/ay;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 587
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ay$a;->l:Z

    .line 573
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/ay$a;->m:Z

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 582
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Z

    .line 583
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Z

    .line 584
    const-string v0, "zh_cn"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/String;

    .line 700
    iput v1, p0, Lcom/amap/api/mapcore2d/ay$a;->e:I

    .line 701
    iput v1, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    .line 703
    const-string v0, "SatelliteMap3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->h:Ljava/lang/String;

    .line 704
    const-string v0, "GridTmc3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->i:Ljava/lang/String;

    .line 705
    const-string v0, "SateliteTmc3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->j:Ljava/lang/String;

    .line 1113
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ay$a;->o:Z

    .line 588
    if-nez p2, :cond_0

    .line 611
    :goto_0
    return-void

    .line 591
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ay$a;->n:Landroid/content/Context;

    .line 592
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 593
    const-string v0, "window"

    .line 594
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 595
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 597
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v2, v2, Lcom/amap/api/mapcore2d/au;->a:I

    div-int/2addr v0, v2

    .line 598
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ay$a;->c()I

    move-result v2

    add-int/2addr v0, v2

    .line 599
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v2, v2, Lcom/amap/api/mapcore2d/au;->a:I

    div-int/2addr v1, v2

    .line 600
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ay$a;->c()I

    move-result v2

    add-int/2addr v1, v2

    .line 601
    mul-int v2, v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/ay$a;->e:I

    .line 603
    iget v0, p0, Lcom/amap/api/mapcore2d/ay$a;->e:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    .line 604
    iget v0, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    if-nez v0, :cond_2

    .line 605
    iput v3, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    .line 610
    :cond_1
    :goto_1
    const-string v0, "zh_cn"

    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    if-le v0, v4, :cond_1

    .line 607
    iput v4, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/ay$1;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/ay$a;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 712
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Lcom/amap/api/mapcore2d/bk;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bk;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 716
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    const-string v1, ""

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 718
    :cond_1
    const-string v0, "zh_cn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    const-string v0, "GridMapV3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    .line 735
    :cond_2
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore2d/am;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    .line 738
    new-instance v1, Lcom/amap/api/mapcore2d/ay$a$2;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore2d/ay$a$2;-><init>(Lcom/amap/api/mapcore2d/ay$a;Lcom/amap/api/mapcore2d/am;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 762
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 764
    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 767
    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 769
    sget v1, Lcom/amap/api/mapcore2d/p;->c:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->c:I

    .line 770
    sget v1, Lcom/amap/api/mapcore2d/p;->d:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->d:I

    .line 771
    new-instance v1, Lcom/amap/api/mapcore2d/bs;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a;->n:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    .line 774
    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 775
    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 777
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z

    .line 778
    return-void

    .line 720
    :cond_3
    const-string v0, "en"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    const-string v0, "GridMapEnV3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 724
    :cond_4
    sget-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    .line 1253
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 1255
    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1261
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/am;->a(Landroid/graphics/Canvas;)V

    .line 1253
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1264
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ay$a;)Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$a;->o:Z

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$a;->m:Z

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/t;->a(Landroid/graphics/Canvas;)V

    .line 1275
    :cond_0
    return-void
.end method

.method private c()I
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x3

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Canvas;)V

    .line 1279
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 884
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    .line 908
    :cond_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v3

    move v1, v2

    .line 889
    :goto_0
    if-ge v1, v3, :cond_0

    .line 890
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 891
    if-eqz v0, :cond_2

    .line 895
    iget-object v4, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    if-ne v4, v5, :cond_2

    .line 897
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 899
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 889
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    .line 1013
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 1015
    if-eqz v0, :cond_0

    .line 1018
    iput v1, v0, Lcom/amap/api/mapcore2d/am;->l:I

    .line 1013
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1020
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 911
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_0

    move v0, v1

    .line 925
    :goto_0
    return v0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v4

    move v3, v1

    .line 916
    :goto_1
    if-ge v3, v4, :cond_2

    .line 917
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 918
    if-eqz v0, :cond_1

    .line 921
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 922
    goto :goto_0

    .line 916
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 925
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 1055
    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->b()V

    goto :goto_1

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->clear()V

    .line 1060
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V
    .locals 2

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$a;->l:Z

    if-eqz v0, :cond_3

    .line 1210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1211
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1212
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1213
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/graphics/Canvas;)V

    .line 1214
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Landroid/graphics/Canvas;)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/br;->a(Landroid/graphics/Canvas;)V

    .line 1218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1219
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/br;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1220
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Landroid/graphics/Canvas;)V

    .line 1223
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Z

    if-nez v0, :cond_2

    .line 1224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ay$a;->a(Z)V

    .line 1225
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    .line 1226
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->d(F)Z

    .line 1227
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->K()V

    .line 1235
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->c(Landroid/graphics/Canvas;)V

    .line 1238
    return-void

    .line 1231
    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->a(Landroid/graphics/Canvas;)V

    .line 1232
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/br;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/br;->a(Landroid/graphics/Canvas;)V

    .line 1233
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 625
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string v0, "zh_cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "en"

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    const-string v1, ""

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 644
    :cond_3
    const-string v0, "zh_cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 645
    const-string v0, "GridMapV3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    .line 653
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/ay$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/am;)Lcom/amap/api/mapcore2d/am;

    .line 654
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    if-nez v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    new-instance v1, Lcom/amap/api/mapcore2d/am;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/am;-><init>(Lcom/amap/api/mapcore2d/au;)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/am;)Lcom/amap/api/mapcore2d/am;

    .line 656
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore2d/bs;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a;->n:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    .line 657
    invoke-static {v4}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/am;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 658
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore2d/ay$a$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/ay$a$1;-><init>(Lcom/amap/api/mapcore2d/ay$a;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    .line 683
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    .line 687
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 688
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    iput-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->f:Z

    .line 690
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/p;->c:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->c:I

    .line 691
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    sget v1, Lcom/amap/api/mapcore2d/p;->d:I

    iput v1, v0, Lcom/amap/api/mapcore2d/am;->d:I

    .line 693
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->n:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z

    .line 695
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    .line 697
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 646
    :cond_6
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    const-string v0, "GridMapEnV3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 650
    :cond_7
    sget-object v0, Lcom/amap/api/mapcore2d/p;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->g:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1174
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ay$a;->l:Z

    .line 1175
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method a(Lcom/amap/api/mapcore2d/am;Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 930
    if-nez p1, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v7

    .line 934
    :cond_1
    iget-object v0, p1, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v8, :cond_0

    .line 938
    iget-object v0, p1, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/ay$a;->d(Ljava/lang/String;)Z

    move-result v0

    .line 939
    if-eq v0, v8, :cond_0

    .line 943
    new-instance v0, Lcom/amap/api/mapcore2d/bk;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bk;-><init>()V

    iput-object v0, p1, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    .line 945
    new-instance v0, Lcom/amap/api/mapcore2d/az;

    iget v1, p0, Lcom/amap/api/mapcore2d/ay$a;->e:I

    iget v2, p0, Lcom/amap/api/mapcore2d/ay$a;->f:I

    iget-boolean v3, p1, Lcom/amap/api/mapcore2d/am;->g:Z

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/am;->i:J

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/az;-><init>(IIZJLcom/amap/api/mapcore2d/am;)V

    iput-object v0, p1, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 949
    new-instance v0, Lcom/amap/api/mapcore2d/s;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 950
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/b;->d:Z

    invoke-direct {v0, p2, v1, p1}, Lcom/amap/api/mapcore2d/s;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/am;)V

    iput-object v0, p1, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    .line 952
    iget-object v0, p1, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    .line 953
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/az;)V

    .line 956
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    .line 958
    iget-boolean v1, p1, Lcom/amap/api/mapcore2d/am;->e:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bk;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 979
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ay$a;->d()V

    .line 980
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/am;->a()Z

    move-result v1

    if-ne v1, v8, :cond_3

    .line 981
    iget-object v1, p1, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v8}, Lcom/amap/api/mapcore2d/ay$a;->a(Ljava/lang/String;Z)Z

    :cond_3
    move v7, v0

    .line 983
    goto :goto_0

    .line 966
    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 967
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 968
    if-eqz v0, :cond_5

    .line 972
    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    if-ne v0, v8, :cond_5

    .line 973
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore2d/bk;->add(ILjava/lang/Object;)V

    move v0, v7

    .line 974
    goto :goto_1

    .line 966
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 782
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 820
    :goto_0
    return v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v4

    move v3, v1

    .line 788
    :goto_1
    if-ge v3, v4, :cond_4

    .line 789
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 790
    if-eqz v0, :cond_3

    .line 794
    iget-object v5, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_3

    .line 795
    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore2d/am;->a(Z)V

    .line 797
    iget-boolean v5, v0, Lcom/amap/api/mapcore2d/am;->e:Z

    if-nez v5, :cond_1

    move v0, v2

    .line 802
    goto :goto_0

    .line 805
    :cond_1
    if-ne p2, v2, :cond_3

    .line 806
    iget v3, v0, Lcom/amap/api/mapcore2d/am;->c:I

    iget v4, v0, Lcom/amap/api/mapcore2d/am;->d:I

    if-le v3, v4, :cond_2

    .line 807
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    iget v4, v0, Lcom/amap/api/mapcore2d/am;->c:I

    .line 808
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(I)V

    .line 809
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    iget v0, v0, Lcom/amap/api/mapcore2d/am;->d:I

    .line 810
    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/ay$d;->b(I)V

    .line 812
    :cond_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;->c(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    move v0, v2

    .line 814
    goto :goto_0

    .line 788
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 820
    goto :goto_0
.end method

.method b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/am;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1023
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 1024
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 1038
    :cond_1
    :goto_0
    return-object v0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v3

    .line 1029
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 1030
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 1031
    if-eqz v0, :cond_3

    .line 1034
    iget-object v4, v0, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v5, :cond_1

    .line 1029
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 1038
    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->k:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 1241
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ay$a;->m:Z

    .line 1242
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1329
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1352
    const/4 v0, 0x0

    return v0
.end method
