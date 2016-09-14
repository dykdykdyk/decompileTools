.class public final Lcom/tencent/open/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/open/utils/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/l;

    move-result-object v0

    const-string v1, "Common_HttpRetryCount"

    invoke-virtual {v0, v1}, Lcom/tencent/open/utils/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x2

    .line 109
    :cond_0
    return v0
.end method
