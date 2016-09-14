.class public final Lcom/tencent/open/utils/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method public static final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
