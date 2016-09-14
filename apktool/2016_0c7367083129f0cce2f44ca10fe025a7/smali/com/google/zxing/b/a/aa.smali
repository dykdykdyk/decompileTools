.class public final Lcom/google/zxing/b/a/aa;
.super Lcom/google/zxing/b/a/u;
.source "TelResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 26
    .line 1030
    invoke-static {p1}, Lcom/google/zxing/b/a/aa;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    const-string v0, "tel:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TEL:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1035
    :cond_0
    const-string v0, "TEL:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_1
    const/16 v2, 0x3f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1038
    if-gez v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    :goto_2
    new-instance v2, Lcom/google/zxing/b/a/z;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/b/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 26
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1035
    goto :goto_1

    .line 1038
    :cond_2
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
