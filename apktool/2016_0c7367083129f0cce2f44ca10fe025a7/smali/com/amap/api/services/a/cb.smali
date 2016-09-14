.class public Lcom/amap/api/services/a/cb;
.super Ljava/lang/Object;
.source "InstanceFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/amap/api/services/a/ba;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ar;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    .line 132
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/cd;->a()Lcom/amap/api/services/a/cd;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/amap/api/services/a/cd;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/cc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    if-eqz v1, :cond_1

    .line 139
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/a/cc;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/amap/api/services/a/cc;->d:Z

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v1, p2}, Lcom/amap/api/services/a/cc;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 144
    invoke-virtual {v1, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 165
    :cond_0
    :goto_1
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    const-string v2, "InstanceFactory"

    const-string v3, "getInstance1"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 149
    :catch_1
    move-exception v1

    const-string v2, "InstanceFactory"

    const-string v3, "getInstance1()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    if-eqz p3, :cond_0

    .line 159
    :try_start_2
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 161
    invoke-virtual {v0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_1

    .line 167
    :catch_2
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance2()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/amap/api/services/a/ar;

    const-string v1, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ar;-><init>(Ljava/lang/String;)V

    throw v0
.end method
