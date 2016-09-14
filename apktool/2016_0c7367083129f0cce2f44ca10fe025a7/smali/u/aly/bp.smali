.class final Lu/aly/bp;
.super Lu/aly/dz;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/bl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lu/aly/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 466
    check-cast p2, Lu/aly/bl;

    .line 1471
    check-cast p1, Lu/aly/dv;

    .line 1473
    iget-object v0, p2, Lu/aly/bl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1474
    iget-object v0, p2, Lu/aly/bl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    invoke-virtual {v0, p1}, Lu/aly/bs;->b(Lu/aly/dq;)V

    goto :goto_0

    .line 1479
    :cond_0
    iget v0, p2, Lu/aly/bl;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1480
    iget-object v0, p2, Lu/aly/bl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 466
    check-cast p2, Lu/aly/bl;

    .line 1486
    check-cast p1, Lu/aly/dv;

    .line 1488
    new-instance v1, Lu/aly/dp;

    const/16 v0, 0xb

    const/16 v2, 0xc

    .line 1490
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lu/aly/dp;-><init>(BBI)V

    .line 1491
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/dp;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bl;->a:Ljava/util/Map;

    .line 1492
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lu/aly/dp;->c:I

    if-ge v0, v2, :cond_0

    .line 1495
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v2

    .line 1496
    new-instance v3, Lu/aly/bs;

    invoke-direct {v3}, Lu/aly/bs;-><init>()V

    .line 1497
    invoke-virtual {v3, p1}, Lu/aly/bs;->a(Lu/aly/dq;)V

    .line 1498
    iget-object v4, p2, Lu/aly/bl;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_0
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->b:I

    .line 1503
    invoke-virtual {p2}, Lu/aly/bl;->b()V

    .line 1504
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->c:Ljava/lang/String;

    .line 466
    return-void
.end method
