.class public Lcom/amap/api/services/a/an;
.super Ljava/lang/Object;
.source "PoiSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IPoiSearch;


# static fields
.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/poisearch/PoiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private h:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/a/an;->e:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/an;->j:Landroid/os/Handler;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/an;->c:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, p2}, Lcom/amap/api/services/a/an;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    .line 64
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/an;->j:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/an;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/services/a/an;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/poisearch/PoiResult;)V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/an;->i:Ljava/util/HashMap;

    .line 294
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/an;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/services/a/an;->h:I

    iget-object v1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 298
    sget-object v0, Lcom/amap/api/services/a/an;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 102
    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/an;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/services/a/an;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/amap/api/services/a/an;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v1

    .line 107
    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/amap/api/services/a/an;->h:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Lcom/amap/api/services/poisearch/PoiResult;
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/an;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/an;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    return-object v0
.end method

.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/services/a/an;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method public searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/an;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 127
    invoke-direct {p0}, Lcom/amap/api/services/a/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/an;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "PoiSearch"

    const-string v2, "searchPOI"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setQueryLanguage(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 134
    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/an;->h:I

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/an;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 137
    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/an;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    .line 140
    :cond_3
    sget-object v0, Lcom/amap/api/services/a/an;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 141
    sget-object v0, Lcom/amap/api/services/a/an;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    :cond_4
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v1, :cond_7

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    move-object v1, v0

    .line 149
    :goto_0
    iget v0, p0, Lcom/amap/api/services/a/an;->h:I

    if-nez v0, :cond_6

    .line 150
    new-instance v0, Lcom/amap/api/services/a/w;

    iget-object v2, p0, Lcom/amap/api/services/a/an;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/services/a/z;

    iget-object v4, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 151
    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amap/api/services/a/z;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v0, v2, v3}, Lcom/amap/api/services/a/w;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/z;)V

    .line 152
    invoke-virtual {v0}, Lcom/amap/api/services/a/w;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    .line 153
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/an;->a(Lcom/amap/api/services/poisearch/PoiResult;)V

    .line 163
    :cond_5
    :goto_1
    return-object v0

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/an;->a(I)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    new-instance v0, Lcom/amap/api/services/a/w;

    iget-object v2, p0, Lcom/amap/api/services/a/an;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/services/a/z;

    iget-object v4, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 158
    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amap/api/services/a/z;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v0, v2, v3}, Lcom/amap/api/services/a/w;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/z;)V

    .line 159
    invoke-virtual {v0}, Lcom/amap/api/services/a/w;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    .line 160
    sget-object v1, Lcom/amap/api/services/a/an;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto :goto_0
.end method

.method public searchPOIAsyn()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/amap/api/services/a/an$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/an$1;-><init>(Lcom/amap/api/services/a/an;)V

    .line 200
    invoke-virtual {v0}, Lcom/amap/api/services/a/an$1;->start()V

    .line 201
    return-void
.end method

.method public searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amap/api/services/a/an;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 211
    new-instance v0, Lcom/amap/api/services/a/v;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/amap/api/services/a/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method public searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/amap/api/services/a/an$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/an$2;-><init>(Lcom/amap/api/services/a/an;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/amap/api/services/a/an$2;->start()V

    .line 245
    return-void
.end method

.method public setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amap/api/services/a/an;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    .line 261
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "en"

    iput-object v0, p0, Lcom/amap/api/services/a/an;->e:Ljava/lang/String;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/a/an;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amap/api/services/a/an;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 74
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 253
    return-void
.end method
