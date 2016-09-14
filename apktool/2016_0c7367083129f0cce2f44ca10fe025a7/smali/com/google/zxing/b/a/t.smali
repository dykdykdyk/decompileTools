.class public final Lcom/google/zxing/b/a/t;
.super Lcom/google/zxing/b/a/u;
.source "ProductResultParser.java"


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

    .line 28
    .line 1083
    iget-object v2, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    .line 1034
    sget-object v1, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    if-eq v2, v1, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-object v0

    .line 1038
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/b/a/t;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/zxing/b/a/t;->a(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    sget-object v0, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    if-ne v2, v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 1047
    invoke-static {v1}, Lcom/google/zxing/e/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    :goto_1
    new-instance v2, Lcom/google/zxing/b/a/s;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 28
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1049
    goto :goto_1
.end method
