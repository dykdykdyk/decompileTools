.class public final Lcom/amap/api/services/help/Inputtips;
.super Ljava/lang/Object;
.source "Inputtips.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

.field private c:Landroid/os/Handler;

.field private d:Lcom/amap/api/services/help/InputtipsQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/amap/api/services/help/Inputtips;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    .line 37
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->c:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/amap/api/services/help/Inputtips;->d:Lcom/amap/api/services/help/InputtipsQuery;

    .line 49
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/help/Inputtips;->c:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/help/Inputtips;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/help/InputtipsQuery;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "Inputtips"

    const-string v2, "requestInputtips"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    throw v0

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    new-instance v0, Lcom/amap/api/services/a/m;

    iget-object v1, p0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/m;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    .line 113
    invoke-virtual {v0}, Lcom/amap/api/services/a/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object v0
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/services/help/Inputtips;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 147
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/help/InputtipsQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p3}, Lcom/amap/api/services/help/InputtipsQuery;->setType(Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/amap/api/services/help/Inputtips$2;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/services/help/Inputtips$2;-><init>(Lcom/amap/api/services/help/Inputtips;Lcom/amap/api/services/help/InputtipsQuery;)V

    .line 172
    invoke-virtual {v1}, Lcom/amap/api/services/help/Inputtips$2;->start()V

    .line 174
    return-void
.end method

.method public final requestInputtipsAsyn()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/amap/api/services/help/Inputtips$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/help/Inputtips$1;-><init>(Lcom/amap/api/services/help/Inputtips;)V

    .line 99
    invoke-virtual {v0}, Lcom/amap/api/services/help/Inputtips$1;->start()V

    .line 100
    return-void
.end method

.method public final setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amap/api/services/help/Inputtips;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    .line 74
    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amap/api/services/help/Inputtips;->d:Lcom/amap/api/services/help/InputtipsQuery;

    .line 66
    return-void
.end method
