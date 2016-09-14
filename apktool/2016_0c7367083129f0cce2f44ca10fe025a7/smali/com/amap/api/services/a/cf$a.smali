.class public Lcom/amap/api/services/a/cf$a;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# direct methods
.method public static a(Lcom/amap/api/services/a/bm;Ljava/lang/String;)Lcom/amap/api/services/a/cj;
    .locals 2

    .prologue
    .line 67
    .line 68
    invoke-static {p1}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cj;

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/services/a/bm;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/a/bm;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/a/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1, p2}, Lcom/amap/api/services/a/cj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cj;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public static a(Lcom/amap/api/services/a/bm;Lcom/amap/api/services/a/cj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-void
.end method
