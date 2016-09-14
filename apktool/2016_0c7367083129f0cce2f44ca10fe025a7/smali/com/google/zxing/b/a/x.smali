.class public final Lcom/google/zxing/b/a/x;
.super Lcom/google/zxing/b/a/u;
.source "SMSTOMMSTOResultParser.java"


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
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 31
    .line 1035
    invoke-static {p1}, Lcom/google/zxing/b/a/x;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SMSTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mmsto:"

    .line 1037
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MMSTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1038
    :goto_0
    return-object v0

    .line 1042
    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1044
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1045
    if-ltz v2, :cond_1

    .line 1046
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1047
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1049
    :cond_1
    new-instance v2, Lcom/google/zxing/b/a/w;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/b/a/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 31
    goto :goto_0
.end method
