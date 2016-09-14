.class public final Lcom/google/zxing/b/a/f;
.super Lcom/google/zxing/b/a/a;
.source "BookmarkDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 3

    .prologue
    .line 24
    .line 1060
    iget-object v0, p1, Lcom/google/zxing/m;->a:Ljava/lang/String;

    .line 1029
    const-string v1, "MEBKM:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    const-string v1, "TITLE:"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/zxing/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1033
    const-string v2, "URL:"

    invoke-static {v2, v0}, Lcom/google/zxing/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_0

    .line 1037
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 1038
    invoke-static {v2}, Lcom/google/zxing/b/a/ad;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/b/a/ac;

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/b/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_0
.end method
