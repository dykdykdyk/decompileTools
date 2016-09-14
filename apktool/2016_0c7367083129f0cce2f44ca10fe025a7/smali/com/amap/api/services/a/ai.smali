.class public Lcom/amap/api/services/a/ai;
.super Ljava/lang/Object;
.source "BusStationSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusStationSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

.field private c:Lcom/amap/api/services/busline/BusStationQuery;

.field private d:Lcom/amap/api/services/busline/BusStationQuery;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ai;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    .line 44
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ai;->g:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ai;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/busline/BusStationResult;)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/services/a/ai;->f:I

    if-gt v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget v0, p0, Lcom/amap/api/services/a/ai;->f:I

    if-lez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/amap/api/services/a/ai;->f:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ai;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Lcom/amap/api/services/busline/BusStationResult;
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ai;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    return-object v0
.end method

.method public searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 60
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "BusStationSearch"

    const-string v2, "searchBusStation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    iget-object v1, p0, Lcom/amap/api/services/a/ai;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->clone()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ai;->d:Lcom/amap/api/services/busline/BusStationQuery;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/ai;->f:I

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/ai;->f:I

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/amap/api/services/a/d;

    iget-object v1, p0, Lcom/amap/api/services/a/ai;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Lcom/amap/api/services/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    .line 73
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationResult;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/a/ai;->f:I

    .line 74
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ai;->a(Lcom/amap/api/services/busline/BusStationResult;)V

    .line 83
    :cond_2
    :goto_0
    return-object v0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ai;->b(I)Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/amap/api/services/a/d;

    iget-object v1, p0, Lcom/amap/api/services/a/ai;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lcom/amap/api/services/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    .line 80
    iget-object v1, p0, Lcom/amap/api/services/a/ai;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public searchBusStationAsyn()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/ai$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/ai$1;-><init>(Lcom/amap/api/services/a/ai;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    return-void
.end method

.method public setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amap/api/services/a/ai;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    .line 118
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {p1, v0}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iput-object p1, p0, Lcom/amap/api/services/a/ai;->c:Lcom/amap/api/services/busline/BusStationQuery;

    .line 156
    :cond_0
    return-void
.end method
