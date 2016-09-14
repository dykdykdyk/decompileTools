.class public final Lcom/nut/blehunter/y;
.super Ljava/lang/Object;
.source "UbStats.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/a/c;->a()Lcom/nut/blehunter/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/nut/blehunter/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/a/e;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/a/c;->a()Lcom/nut/blehunter/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/nut/blehunter/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/a/e;

    move-result-object v0

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1362
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1363
    :cond_3
    iget-object v1, v0, Lcom/nut/blehunter/a/e;->d:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_4
    invoke-virtual {v0}, Lcom/nut/blehunter/a/e;->a()V

    goto :goto_0
.end method
