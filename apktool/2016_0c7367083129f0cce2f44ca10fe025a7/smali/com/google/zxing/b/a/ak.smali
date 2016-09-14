.class public final Lcom/google/zxing/b/a/ak;
.super Lcom/google/zxing/b/a/u;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x3b

    const/4 v5, 0x0

    .line 31
    .line 1035
    invoke-static {p1}, Lcom/google/zxing/b/a/ak;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    const-string v2, "WIFI:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-object v0

    .line 1039
    :cond_1
    const-string v2, "S:"

    invoke-static {v2, v1, v6, v5}, Lcom/google/zxing/b/a/ak;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 1040
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1043
    const-string v0, "P:"

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/b/a/ak;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 1044
    const-string v0, "T:"

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/b/a/ak;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 1045
    if-nez v0, :cond_2

    .line 1046
    const-string v0, "nopass"

    .line 1048
    :cond_2
    const-string v4, "H:"

    invoke-static {v4, v1, v6, v5}, Lcom/google/zxing/b/a/ak;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1049
    new-instance v1, Lcom/google/zxing/b/a/aj;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/b/a/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 31
    goto :goto_0
.end method
