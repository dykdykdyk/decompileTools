.class public final Lcom/c/a/b/a/f;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/c/a/b/a/b;


# instance fields
.field final synthetic a:Lcom/c/a/b/a/e;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/c/a/b/a/e;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/b/a/f;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/c/a/b/a/b;
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    .line 275
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/c/a/b/a/f;->c:Z

    .line 276
    monitor-exit p0

    return-object p0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;F)Lcom/c/a/b/a/b;
    .locals 2

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    monitor-exit p0

    return-object p0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/c/a/b/a/b;
    .locals 2

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    monitor-exit p0

    return-object p0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/c/a/b/a/b;
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-exit p0

    return-object p0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/b/a/b;
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit p0

    return-object p0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/c/a/b/a/b;
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit p0

    return-object p0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    .line 287
    invoke-static {}, Lcom/c/a/b/a/d;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-static {v3}, Lcom/c/a/b/a/e;->a(Lcom/c/a/b/a/e;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v4, v1

    .line 289
    :goto_0
    if-eqz v4, :cond_8

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-static {v2}, Lcom/c/a/b/a/e;->a(Lcom/c/a/b/a/e;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    move-object v3, v1

    .line 295
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    iget-boolean v0, p0, Lcom/c/a/b/a/f;->c:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-static {v0}, Lcom/c/a/b/a/e;->b(Lcom/c/a/b/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/b/a/f;->c:Z

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 304
    if-ne v0, p0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-static {v0}, Lcom/c/a/b/a/e;->b(Lcom/c/a/b/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :goto_3
    if-eqz v4, :cond_1

    .line 311
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 321
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    move v4, v2

    .line 288
    goto :goto_0

    .line 307
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-static {v7}, Lcom/c/a/b/a/e;->b(Lcom/c/a/b/a/e;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/c/a/b/a/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :try_start_4
    iget-object v0, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    invoke-static {v0}, Lcom/c/a/b/a/e;->c(Lcom/c/a/b/a/e;)Z

    move-result v1

    .line 318
    if-eqz v1, :cond_5

    .line 319
    iget-object v6, p0, Lcom/c/a/b/a/f;->a:Lcom/c/a/b/a/e;

    .line 1146
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1147
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v6, Lcom/c/a/b/a/e;->b:Z

    .line 1148
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 321
    :cond_5
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 323
    if-eqz v4, :cond_7

    .line 324
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 325
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_5

    .line 1148
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 324
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 335
    :cond_7
    return v1

    :cond_8
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_1
.end method
