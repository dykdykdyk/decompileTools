.class public Lcom/twitter/sdk/android/core/internal/scribe/e;
.super Ljava/lang/Object;
.source "ScribeClient.java"


# instance fields
.field private final a:Lio/fabric/sdk/android/o;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/internal/scribe/l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/sdk/android/core/internal/scribe/f;

.field private final e:Lcom/twitter/sdk/android/core/internal/scribe/h;

.field private final f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/m",
            "<+",
            "Lcom/twitter/sdk/android/core/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljavax/net/ssl/SSLSocketFactory;

.field private final i:Lio/fabric/sdk/android/services/b/x;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/f;Lcom/twitter/sdk/android/core/internal/scribe/h;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Lio/fabric/sdk/android/services/b/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/o;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/scribe/f;",
            "Lcom/twitter/sdk/android/core/internal/scribe/h;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/m",
            "<+",
            "Lcom/twitter/sdk/android/core/l;",
            ">;>;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Lio/fabric/sdk/android/services/b/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->a:Lio/fabric/sdk/android/o;

    .line 86
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->d:Lcom/twitter/sdk/android/core/internal/scribe/f;

    .line 88
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->e:Lcom/twitter/sdk/android/core/internal/scribe/h;

    .line 89
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 90
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->g:Ljava/util/List;

    .line 91
    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->i:Lio/fabric/sdk/android/services/b/x;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/internal/scribe/g;J)Z
    .locals 20

    .prologue
    .line 103
    .line 1125
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->a:Lio/fabric/sdk/android/o;

    .line 2116
    iget-object v3, v2, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 1133
    new-instance v6, Lio/fabric/sdk/android/services/c/q;

    new-instance v2, Lio/fabric/sdk/android/services/d/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->a:Lio/fabric/sdk/android/o;

    invoke-direct {v2, v4}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/o;)V

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/d/b;->a()Ljava/io/File;

    move-result-object v2

    .line 2156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_se.tap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_se_to_send"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1133
    invoke-direct {v6, v3, v2, v4, v5}, Lio/fabric/sdk/android/services/c/q;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->e:Lcom/twitter/sdk/android/core/internal/scribe/h;

    new-instance v5, Lio/fabric/sdk/android/services/b/ah;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/b/ah;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->d:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget v7, v7, Lcom/twitter/sdk/android/core/internal/scribe/f;->g:I

    invoke-direct/range {v2 .. v7}, Lcom/twitter/sdk/android/core/internal/scribe/i;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/c/q;I)V

    .line 1138
    new-instance v17, Lcom/twitter/sdk/android/core/internal/scribe/l;

    .line 3143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->a:Lio/fabric/sdk/android/o;

    .line 4116
    iget-object v6, v4, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 3144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->d:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-boolean v4, v4, Lcom/twitter/sdk/android/core/internal/scribe/f;->a:Z

    if-eqz v4, :cond_1

    .line 3145
    const-string v4, "Scribe enabled"

    invoke-static {v6, v4}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3146
    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/b;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->d:Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-object/from16 v19, v0

    new-instance v5, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->d:Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->i:Lio/fabric/sdk/android/services/b/x;

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v14}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/f;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;Lio/fabric/sdk/android/services/b/x;)V

    move-object v7, v4

    move-object v8, v6

    move-object/from16 v9, v18

    move-object v10, v2

    move-object/from16 v11, v19

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/twitter/sdk/android/core/internal/scribe/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/i;Lcom/twitter/sdk/android/core/internal/scribe/f;Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;)V

    .line 1138
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/twitter/sdk/android/core/internal/scribe/l;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/m;Lio/fabric/sdk/android/services/c/d;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1126
    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/internal/scribe/l;

    .line 5046
    new-instance v3, Lio/fabric/sdk/android/services/c/h;

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lio/fabric/sdk/android/services/c/h;-><init>(Lio/fabric/sdk/android/services/c/g;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lio/fabric/sdk/android/services/c/g;->a(Ljava/lang/Runnable;)V

    .line 104
    const/4 v2, 0x1

    .line 107
    :goto_1
    return v2

    .line 3150
    :cond_1
    const-string v4, "Scribe disabled"

    invoke-static {v6, v4}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3151
    new-instance v4, Lio/fabric/sdk/android/services/c/a;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/c/a;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/sdk/android/core/internal/scribe/e;->a:Lio/fabric/sdk/android/o;

    .line 5116
    iget-object v2, v2, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 106
    const-string v3, "Failed to scribe event"

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x0

    goto :goto_1
.end method
