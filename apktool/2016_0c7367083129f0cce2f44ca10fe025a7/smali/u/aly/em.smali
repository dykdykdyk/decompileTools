.class public final Lu/aly/em;
.super Lu/aly/ef;
.source "UMCCAggregatedManager.java"


# instance fields
.field final synthetic a:Lu/aly/ej;


# direct methods
.method public constructor <init>(Lu/aly/ej;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lu/aly/em;->a:Lu/aly/ej;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 374
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v1, p0, Lu/aly/em;->a:Lu/aly/ej;

    .line 1387
    iget-object v0, v1, Lu/aly/ej;->a:Lu/aly/eg;

    .line 2033
    iget-object v0, v0, Lu/aly/eg;->a:Ljava/util/Map;

    .line 1388
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1391
    iget-object v3, v1, Lu/aly/ej;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1392
    iget-object v3, v1, Lu/aly/ej;->g:Ljava/util/List;

    .line 2111
    const-string v4, "!"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1395
    :cond_1
    iget-object v0, v1, Lu/aly/ej;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1396
    new-instance v0, Lu/aly/ef;

    invoke-direct {v0}, Lu/aly/ef;-><init>()V

    iget-object v1, v1, Lu/aly/ej;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lu/aly/ey;->a(Lu/aly/ef;Ljava/util/List;)V

    .line 377
    :cond_2
    return-void
.end method
