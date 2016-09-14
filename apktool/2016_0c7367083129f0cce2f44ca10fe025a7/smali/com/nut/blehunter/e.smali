.class public final Lcom/nut/blehunter/e;
.super Ljava/lang/Object;
.source "GsonHelper.java"


# static fields
.field private static a:Lcom/google/gson/Gson;


# direct methods
.method public static declared-synchronized a()Lcom/google/gson/Gson;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/nut/blehunter/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/e;->a:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/nut/blehunter/e;->a:Lcom/google/gson/Gson;

    .line 36
    :cond_0
    sget-object v0, Lcom/nut/blehunter/e;->a:Lcom/google/gson/Gson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/nut/blehunter/f;

    invoke-direct {v0}, Lcom/nut/blehunter/f;-><init>()V

    invoke-virtual {v0}, Lcom/nut/blehunter/f;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/ShareUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/nut/blehunter/g;

    invoke-direct {v0}, Lcom/nut/blehunter/g;-><init>()V

    invoke-virtual {v0}, Lcom/nut/blehunter/g;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 65
    invoke-static {p0, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lcom/nut/blehunter/h;

    invoke-direct {v0}, Lcom/nut/blehunter/h;-><init>()V

    invoke-virtual {v0}, Lcom/nut/blehunter/h;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 73
    invoke-static {p0, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lcom/nut/blehunter/j;

    invoke-direct {v0}, Lcom/nut/blehunter/j;-><init>()V

    invoke-virtual {v0}, Lcom/nut/blehunter/j;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 89
    invoke-static {p0, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/SafeRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v0, Lcom/nut/blehunter/m;

    invoke-direct {v0}, Lcom/nut/blehunter/m;-><init>()V

    invoke-virtual {v0}, Lcom/nut/blehunter/m;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 113
    invoke-static {p0, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method
