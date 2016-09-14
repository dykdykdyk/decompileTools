.class public final Lcom/google/zxing/b/a/ae;
.super Lcom/google/zxing/b/a/u;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 28
    .line 1032
    invoke-static {p1}, Lcom/google/zxing/b/a/ae;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    const-string v2, "urlto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "URLTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-object v0

    .line 1036
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1037
    if-ltz v2, :cond_0

    .line 1040
    if-gt v2, v3, :cond_2

    .line 1041
    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1042
    new-instance v1, Lcom/google/zxing/b/a/ac;

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/b/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 28
    goto :goto_0

    .line 1040
    :cond_2
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
