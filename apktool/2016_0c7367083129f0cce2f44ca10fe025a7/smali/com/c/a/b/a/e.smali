.class final Lcom/c/a/b/a/e;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/c/a/b/a/a;


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;

.field b:Z

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/c/a/b/a/e;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-boolean v1, p0, Lcom/c/a/b/a/e;->b:Z

    .line 128
    iput-object p1, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    .line 129
    invoke-static {p1}, Lcom/c/a/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/e;->d:Ljava/io/File;

    .line 130
    iput v1, p0, Lcom/c/a/b/a/e;->e:I

    .line 131
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/c/a/b/a/e;->a:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/b/a/e;->g:Ljava/util/WeakHashMap;

    .line 133
    return-void

    .line 131
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    .line 346
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 350
    goto :goto_0

    .line 353
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/b/a/e;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/c/a/b/a/e;->g:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/b/a/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/c/a/b/a/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/c/a/b/a/e;)Z
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/c/a/b/a/e;->e()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    iget-object v2, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/c/a/b/a/e;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    iget-object v3, p0, Lcom/c/a/b/a/e;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 379
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    invoke-static {v2}, Lcom/c/a/b/a/e;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 380
    if-eqz v2, :cond_0

    .line 383
    iget-object v3, p0, Lcom/c/a/b/a/e;->a:Ljava/util/Map;

    .line 1153
    new-instance v4, Lcom/c/a/b/a/g;

    invoke-direct {v4}, Lcom/c/a/b/a/g;-><init>()V

    .line 1154
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1155
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1156
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1158
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/c/a/b/a/h;->a(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1159
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 384
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 387
    iget-object v2, p0, Lcom/c/a/b/a/e;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 388
    goto :goto_0

    :catch_0
    move-exception v1

    .line 393
    :goto_1
    iget-object v1, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 391
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/c/a/b/a/e;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 180
    monitor-enter p0

    .line 182
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/c/a/b/a/e;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lcom/c/a/b/a/b;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/c/a/b/a/f;

    invoke-direct {v0, p0}, Lcom/c/a/b/a/f;-><init>(Lcom/c/a/b/a/e;)V

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/b/a/e;->b:Z

    monitor-exit p0

    return v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
