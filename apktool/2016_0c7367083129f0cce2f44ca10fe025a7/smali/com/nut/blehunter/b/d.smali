.class public final Lcom/nut/blehunter/b/d;
.super Ljava/lang/Object;
.source "PrefAddressUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/nut/blehunter/b/a;
    .locals 2

    .prologue
    .line 18
    .line 1023
    const-string v0, "nut_disconnect_address"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/nut/blehunter/b/a;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/nut/blehunter/b/a;

    goto :goto_0
.end method
