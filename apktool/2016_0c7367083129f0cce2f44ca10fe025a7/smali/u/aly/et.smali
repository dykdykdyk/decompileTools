.class final Lu/aly/et;
.super Lu/aly/ef;
.source "UMCCAggregatedManager.java"


# instance fields
.field final synthetic a:Lu/aly/es;


# direct methods
.method constructor <init>(Lu/aly/es;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lu/aly/et;->a:Lu/aly/es;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 160
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Ljava/util/Map;

    .line 162
    iget-object v0, p0, Lu/aly/et;->a:Lu/aly/es;

    iget-object v0, v0, Lu/aly/es;->b:Lu/aly/ej;

    .line 1038
    iget-object v4, v0, Lu/aly/ej;->a:Lu/aly/eg;

    .line 2037
    iget-object v0, v4, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2038
    iput-object p1, v4, Lu/aly/eg;->a:Ljava/util/Map;

    .line 170
    :cond_0
    iget-object v0, p0, Lu/aly/et;->a:Lu/aly/es;

    iget-object v0, v0, Lu/aly/es;->b:Lu/aly/ej;

    .line 3038
    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/aly/ej;->c:Z

    .line 171
    return-void

    .line 2048
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    iget-object v0, v4, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2054
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 2056
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2058
    iget-object v1, v4, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2059
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2060
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2061
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2063
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2064
    iget-object v7, v4, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2066
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/eh;

    .line 2067
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/eh;

    .line 2068
    invoke-static {v2, v1}, Lu/aly/eg;->a(Lu/aly/eh;Lu/aly/eh;)V

    .line 2069
    iget-object v2, v4, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    iget-object v2, v4, Lu/aly/eg;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
