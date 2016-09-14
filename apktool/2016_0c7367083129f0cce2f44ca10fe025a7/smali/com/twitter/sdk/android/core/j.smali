.class public final Lcom/twitter/sdk/android/core/j;
.super Ljava/lang/Object;
.source "PersistedSessionManager.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/l;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/m",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/d/c;

.field private final b:Lio/fabric/sdk/android/services/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/d/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lio/fabric/sdk/android/services/d/e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Lio/fabric/sdk/android/services/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/d/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/d/c;",
            "Lio/fabric/sdk/android/services/d/f",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 32
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v5, Lio/fabric/sdk/android/services/d/e;

    invoke-direct {v5, p1, p2, p3}, Lio/fabric/sdk/android/services/d/e;-><init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/core/j;-><init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lio/fabric/sdk/android/services/d/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lio/fabric/sdk/android/services/d/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/d/c;",
            "Lio/fabric/sdk/android/services/d/f",
            "<TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lio/fabric/sdk/android/services/d/e",
            "<TT;>;>;",
            "Lio/fabric/sdk/android/services/d/e",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/j;->i:Z

    .line 43
    iput-object p1, p0, Lcom/twitter/sdk/android/core/j;->a:Lio/fabric/sdk/android/services/d/c;

    .line 44
    iput-object p2, p0, Lcom/twitter/sdk/android/core/j;->b:Lio/fabric/sdk/android/services/d/f;

    .line 45
    iput-object p3, p0, Lcom/twitter/sdk/android/core/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-object p4, p0, Lcom/twitter/sdk/android/core/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    iput-object p5, p0, Lcom/twitter/sdk/android/core/j;->e:Lio/fabric/sdk/android/services/d/e;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/j;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    iput-object p6, p0, Lcom/twitter/sdk/android/core/j;->g:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/twitter/sdk/android/core/j;->h:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private a(JLcom/twitter/sdk/android/core/l;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;Z)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/d/e;

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lio/fabric/sdk/android/services/d/e;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/j;->a:Lio/fabric/sdk/android/services/d/c;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/j;->b:Lio/fabric/sdk/android/services/d/f;

    .line 5173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twitter/sdk/android/core/j;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/d/e;-><init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/twitter/sdk/android/core/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-virtual {v0, p3}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    .line 164
    if-eqz v0, :cond_1

    if-eqz p4, :cond_2

    .line 165
    :cond_1
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/j;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->e:Lio/fabric/sdk/android/services/d/e;

    invoke-virtual {v0, p3}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/Object;)V

    .line 168
    monitor-exit p0

    .line 170
    :cond_2
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/j;->i:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/j;->d()V

    .line 58
    :cond_0
    return-void
.end method

.method private declared-synchronized d()V
    .locals 8

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/twitter/sdk/android/core/j;->i:Z

    if-eqz v2, :cond_3

    .line 1084
    iget-object v2, p0, Lcom/twitter/sdk/android/core/j;->e:Lio/fabric/sdk/android/services/d/e;

    .line 2045
    iget-object v3, v2, Lio/fabric/sdk/android/services/d/e;->a:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2046
    iget-object v4, v2, Lio/fabric/sdk/android/services/d/e;->b:Lio/fabric/sdk/android/services/d/f;

    iget-object v2, v2, Lio/fabric/sdk/android/services/d/e;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lio/fabric/sdk/android/services/d/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1084
    check-cast v2, Lcom/twitter/sdk/android/core/l;

    .line 1085
    if-eqz v2, :cond_0

    .line 3026
    iget-wide v4, v2, Lcom/twitter/sdk/android/core/l;->b:J

    .line 1086
    const/4 v3, 0x0

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(JLcom/twitter/sdk/android/core/l;Z)V

    .line 3071
    :cond_0
    iget-object v2, p0, Lcom/twitter/sdk/android/core/j;->a:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 3072
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 3073
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3091
    iget-object v5, p0, Lcom/twitter/sdk/android/core/j;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 3073
    if-eqz v2, :cond_1

    .line 3074
    iget-object v5, p0, Lcom/twitter/sdk/android/core/j;->b:Lio/fabric/sdk/android/services/d/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Lio/fabric/sdk/android/services/d/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/l;

    .line 3075
    if-eqz v2, :cond_1

    .line 4026
    iget-wide v6, v2, Lcom/twitter/sdk/android/core/l;->b:J

    .line 3076
    const/4 v3, 0x0

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(JLcom/twitter/sdk/android/core/l;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 64
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/twitter/sdk/android/core/j;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :cond_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/sdk/android/core/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/j;->c()V

    .line 100
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    return-object v0
.end method

.method public final a(J)Lcom/twitter/sdk/android/core/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/j;->c()V

    .line 132
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    return-object v0
.end method

.method public final a(Lcom/twitter/sdk/android/core/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/j;->c()V

    .line 5026
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/l;->b:J

    .line 112
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/j;->a(JLcom/twitter/sdk/android/core/l;Z)V

    .line 113
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/j;->c()V

    .line 151
    iget-object v0, p0, Lcom/twitter/sdk/android/core/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
