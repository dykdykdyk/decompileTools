.class public Lcom/amap/api/services/a/ah;
.super Ljava/lang/Object;
.source "BusLineSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusLineSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

.field private c:Lcom/amap/api/services/busline/BusLineQuery;

.field private d:Lcom/amap/api/services/busline/BusLineQuery;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->g:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    .line 45
    invoke-virtual {p2}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->d:Lcom/amap/api/services/busline/BusLineQuery;

    .line 46
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->g:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ah;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/busline/BusLineResult;)V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/services/a/ah;->e:I

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lcom/amap/api/services/a/ah;->e:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ah;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/amap/api/services/a/ah;->e:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ah;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Lcom/amap/api/services/busline/BusLineResult;
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ah;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    return-object v0
.end method

.method public searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 63
    invoke-direct {p0}, Lcom/amap/api/services/a/ah;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "BusLineSearch"

    const-string v2, "searchBusLine"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    iget-object v1, p0, Lcom/amap/api/services/a/ah;->d:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->d:Lcom/amap/api/services/busline/BusLineQuery;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/ah;->e:I

    .line 69
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/ah;->e:I

    if-nez v0, :cond_3

    .line 74
    new-instance v0, Lcom/amap/api/services/a/d;

    iget-object v1, p0, Lcom/amap/api/services/a/ah;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0}, Lcom/amap/api/services/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    .line 76
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ah;->a(Lcom/amap/api/services/busline/BusLineResult;)V

    .line 85
    :cond_2
    :goto_0
    return-object v0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ah;->b(I)Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    new-instance v0, Lcom/amap/api/services/a/d;

    iget-object v1, p0, Lcom/amap/api/services/a/ah;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Lcom/amap/api/services/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    .line 82
    iget-object v1, p0, Lcom/amap/api/services/a/ah;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public searchBusLineAsyn()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/ah$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/ah$1;-><init>(Lcom/amap/api/services/a/ah;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method public setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/services/a/ah;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    .line 120
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iput-object p1, p0, Lcom/amap/api/services/a/ah;->c:Lcom/amap/api/services/busline/BusLineQuery;

    .line 157
    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ah;->d:Lcom/amap/api/services/busline/BusLineQuery;

    .line 159
    :cond_0
    return-void
.end method
