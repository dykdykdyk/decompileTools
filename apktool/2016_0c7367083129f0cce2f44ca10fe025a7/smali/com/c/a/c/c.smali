.class public final Lcom/c/a/c/c;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-static {p0}, Lcom/c/a/c/b;->a(Landroid/content/Context;)Lcom/c/a/c/a;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 1059
    iget-object v1, v0, Lcom/c/a/c/a;->d:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "ffffffffffffffffffffffff"

    :goto_0
    return-object v0

    .line 2059
    :cond_1
    iget-object v0, v0, Lcom/c/a/c/a;->d:Ljava/lang/String;

    goto :goto_0
.end method
