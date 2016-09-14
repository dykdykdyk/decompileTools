.class public final Lcom/crashlytics/android/core/ab;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:[Ljava/lang/String;


# instance fields
.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lcom/crashlytics/android/core/v;

.field final g:Ljava/io/File;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final m:Lio/fabric/sdk/android/services/d/a;

.field private final n:Lio/fabric/sdk/android/services/b/x;

.field private final o:Lcom/crashlytics/android/core/cd;

.field private final p:Lcom/crashlytics/android/core/h;

.field private final q:Lcom/crashlytics/android/core/az;

.field private final r:Lcom/crashlytics/android/core/at;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/crashlytics/android/core/ac;

    invoke-direct {v0}, Lcom/crashlytics/android/core/ac;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/ab;->a:Ljava/io/FilenameFilter;

    .line 127
    new-instance v0, Lcom/crashlytics/android/core/ah;

    invoke-direct {v0}, Lcom/crashlytics/android/core/ah;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/ab;->b:Ljava/util/Comparator;

    .line 134
    new-instance v0, Lcom/crashlytics/android/core/ai;

    invoke-direct {v0}, Lcom/crashlytics/android/core/ai;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/ab;->c:Ljava/util/Comparator;

    .line 144
    new-instance v0, Lcom/crashlytics/android/core/aj;

    invoke-direct {v0}, Lcom/crashlytics/android/core/aj;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/ab;->d:Ljava/io/FilenameFilter;

    .line 151
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/ab;->h:Ljava/util/regex/Pattern;

    .line 156
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/ab;->i:Ljava/util/Map;

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/core/ab;->j:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/v;Lio/fabric/sdk/android/services/b/x;Lcom/crashlytics/android/core/cf;Lio/fabric/sdk/android/services/d/a;Lcom/crashlytics/android/core/h;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ab;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 215
    iput-object p1, p0, Lcom/crashlytics/android/core/ab;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 216
    iput-object p2, p0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    .line 217
    iput-object p3, p0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    .line 218
    iput-object p6, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 219
    invoke-interface {p4}, Lcom/crashlytics/android/core/cf;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/ab;->s:Ljava/lang/String;

    .line 220
    iput-object p5, p0, Lcom/crashlytics/android/core/ab;->m:Lio/fabric/sdk/android/services/d/a;

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v1

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2116
    iget-object v0, p6, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 225
    new-instance v1, Lcom/crashlytics/android/core/az;

    invoke-direct {v1, v0, p5}, Lcom/crashlytics/android/core/az;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/ab;->q:Lcom/crashlytics/android/core/az;

    .line 226
    new-instance v1, Lcom/crashlytics/android/core/at;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/at;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/ab;->r:Lcom/crashlytics/android/core/at;

    .line 227
    new-instance v0, Lcom/crashlytics/android/core/bd;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/crashlytics/android/core/cd;

    new-instance v2, Lcom/crashlytics/android/core/bw;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/bw;-><init>(I)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/bd;-><init>([Lcom/crashlytics/android/core/cd;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ab;->o:Lcom/crashlytics/android/core/cd;

    .line 229
    return-void
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/ab;Lcom/crashlytics/android/core/a/a/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 24828
    .line 25405
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->e()[Ljava/io/File;

    move-result-object v0

    .line 25406
    array-length v2, v0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 24833
    :goto_0
    if-nez v0, :cond_1

    .line 24834
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24861
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 24862
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 24863
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 25406
    goto :goto_0

    .line 24841
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "<native-crash [%s (%s)]>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/crashlytics/android/core/a/a/d;->b:Lcom/crashlytics/android/core/a/a/e;

    iget-object v6, v6, Lcom/crashlytics/android/core/a/a/e;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/crashlytics/android/core/a/a/d;->b:Lcom/crashlytics/android/core/a/a/e;

    iget-object v6, v6, Lcom/crashlytics/android/core/a/a/e;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/crashlytics/android/core/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24848
    new-instance v2, Lcom/crashlytics/android/core/d;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionCrash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24849
    :try_start_2
    invoke-static {v2}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;

    move-result-object v1

    .line 24851
    new-instance v3, Lcom/crashlytics/android/core/bc;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/bc;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/core/bc;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 24853
    new-instance v4, Lcom/crashlytics/android/core/az;

    iget-object v5, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 26116
    iget-object v5, v5, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 24853
    iget-object v6, p0, Lcom/crashlytics/android/core/ab;->m:Lio/fabric/sdk/android/services/d/a;

    invoke-direct {v4, v5, v6, v0}, Lcom/crashlytics/android/core/az;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;Ljava/lang/String;)V

    .line 24855
    invoke-static {p1, v4, v3, v1}, Lcom/crashlytics/android/core/bf;->a(Lcom/crashlytics/android/core/a/a/d;Lcom/crashlytics/android/core/az;Ljava/util/Map;Lcom/crashlytics/android/core/f;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24861
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 24862
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 24857
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 24858
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24861
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 24862
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 24861
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 24862
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 24861
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 24857
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/crashlytics/android/core/ab;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 55
    .line 22269
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 22975
    iget-object v0, v0, Lcom/crashlytics/android/core/h;->d:Lcom/crashlytics/android/core/y;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/y;->a()Z

    .line 24395
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->e()[Ljava/io/File;

    move-result-object v0

    .line 24396
    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 23795
    :goto_0
    if-nez v0, :cond_2

    .line 23796
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23812
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23813
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 24483
    :goto_1
    invoke-direct {p0, v7}, Lcom/crashlytics/android/core/ab;->a(Z)V

    .line 22274
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->d()V

    .line 24641
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/core/ab;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/core/ab;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/ch;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 22278
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22279
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->f()V

    .line 55
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 24396
    goto :goto_0

    .line 23803
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/crashlytics/android/core/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23805
    new-instance v6, Lcom/crashlytics/android/core/d;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23806
    :try_start_2
    invoke-static {v6}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;

    move-result-object v1

    .line 23807
    const-string v5, "crash"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23812
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23813
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 23808
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 23809
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 23812
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23813
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 23812
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23813
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 23812
    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 23808
    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_2
.end method

.method private static a(Lcom/crashlytics/android/core/f;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    :goto_0
    return-void

    .line 1228
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, p0, v0}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/InputStream;Lcom/crashlytics/android/core/f;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1232
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/core/f;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1201
    sget-object v2, Lcom/crashlytics/android/core/ab;->j:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1202
    new-instance v5, Lcom/crashlytics/android/core/an;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/core/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1205
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1206
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1201
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Collecting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " data for session ID "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;Ljava/io/File;)V

    goto :goto_1

    .line 1214
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/core/f;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v6, Lcom/crashlytics/android/core/ce;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->o:Lcom/crashlytics/android/core/cd;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v2}, Lcom/crashlytics/android/core/ce;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/cd;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 18116
    iget-object v11, v2, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 1034
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v3, v2, v4

    .line 1035
    invoke-static {v11}, Lio/fabric/sdk/android/services/b/l;->c(Landroid/content/Context;)F

    move-result v17

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->r:Lcom/crashlytics/android/core/at;

    .line 19065
    iget-boolean v2, v2, Lcom/crashlytics/android/core/at;->e:Z

    .line 1036
    invoke-static {v11, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Z)I

    move-result v18

    .line 1038
    invoke-static {v11}, Lio/fabric/sdk/android/services/b/l;->d(Landroid/content/Context;)Z

    move-result v19

    .line 1039
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1040
    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->b()J

    move-result-wide v8

    invoke-static {v11}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;)J

    move-result-wide v12

    sub-long v20, v8, v12

    .line 1042
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->b(Ljava/lang/String;)J

    move-result-wide v22

    .line 1045
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    .line 1047
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1048
    iget-object v8, v6, Lcom/crashlytics/android/core/ce;->c:[Ljava/lang/StackTraceElement;

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 19741
    iget-object v0, v2, Lcom/crashlytics/android/core/h;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    .line 20177
    iget-object v15, v2, Lio/fabric/sdk/android/services/b/x;->c:Ljava/lang/String;

    .line 1054
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 1055
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1056
    const/4 v2, 0x0

    .line 1057
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1058
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    aput-object v5, v9, v7

    .line 1059
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/core/ab;->o:Lcom/crashlytics/android/core/cd;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v5, v2}, Lcom/crashlytics/android/core/cd;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    .line 1061
    goto :goto_0

    .line 1069
    :cond_0
    const-string v2, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v11, v2, v5}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1082
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/core/ab;->q:Lcom/crashlytics/android/core/az;

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v23}, Lcom/crashlytics/android/core/cb;->a(Lcom/crashlytics/android/core/f;JLjava/lang/String;Lcom/crashlytics/android/core/ce;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/az;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;FIZJJ)V

    .line 1087
    return-void

    .line 1073
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 20703
    iget-object v2, v2, Lcom/crashlytics/android/core/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1074
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    .line 1078
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    move-object v11, v2

    goto :goto_1
.end method

.method private static a(Lcom/crashlytics/android/core/f;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1185
    sget-object v1, Lio/fabric/sdk/android/services/b/l;->a:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1187
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 1189
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-static {p0, v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1198
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;Lcom/crashlytics/android/core/f;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1238
    new-array v2, p2, [B

    move v0, v1

    .line 1242
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1244
    add-int/2addr v0, v3

    goto :goto_0

    .line 20745
    :cond_0
    array-length v0, v2

    .line 20751
    iget v3, p1, Lcom/crashlytics/android/core/f;->b:I

    iget v4, p1, Lcom/crashlytics/android/core/f;->c:I

    sub-int/2addr v3, v4

    if-lt v3, v0, :cond_1

    .line 20753
    iget-object v3, p1, Lcom/crashlytics/android/core/f;->a:[B

    iget v4, p1, Lcom/crashlytics/android/core/f;->c:I

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20754
    iget v1, p1, Lcom/crashlytics/android/core/f;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/crashlytics/android/core/f;->c:I

    .line 20771
    :goto_1
    return-void

    .line 20758
    :cond_1
    iget v3, p1, Lcom/crashlytics/android/core/f;->b:I

    iget v4, p1, Lcom/crashlytics/android/core/f;->c:I

    sub-int/2addr v3, v4

    .line 20759
    iget-object v4, p1, Lcom/crashlytics/android/core/f;->a:[B

    iget v5, p1, Lcom/crashlytics/android/core/f;->c:I

    invoke-static {v2, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20760
    add-int/lit8 v4, v3, 0x0

    .line 20761
    sub-int/2addr v0, v3

    .line 20762
    iget v3, p1, Lcom/crashlytics/android/core/f;->b:I

    iput v3, p1, Lcom/crashlytics/android/core/f;->c:I

    .line 20763
    invoke-virtual {p1}, Lcom/crashlytics/android/core/f;->b()V

    .line 20768
    iget v3, p1, Lcom/crashlytics/android/core/f;->b:I

    if-gt v0, v3, :cond_2

    .line 20770
    iget-object v3, p1, Lcom/crashlytics/android/core/f;->a:[B

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20771
    iput v0, p1, Lcom/crashlytics/android/core/f;->c:I

    goto :goto_1

    .line 20774
    :cond_2
    iget-object v1, p1, Lcom/crashlytics/android/core/f;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 566
    .line 17575
    new-instance v0, Lcom/crashlytics/android/core/ap;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/ap;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 566
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 567
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 490
    if-eqz p1, :cond_0

    move v0, v1

    .line 492
    :goto_0
    add-int/lit8 v3, v0, 0x8

    .line 10646
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 10648
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->e()[Ljava/io/File;

    move-result-object v6

    .line 10649
    array-length v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v3, v2

    .line 10651
    :goto_1
    if-ge v3, v7, :cond_1

    .line 10652
    aget-object v8, v6, v3

    invoke-static {v8}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 10653
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10651
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 490
    goto :goto_0

    .line 10656
    :cond_1
    iget-object v3, p0, Lcom/crashlytics/android/core/ab;->q:Lcom/crashlytics/android/core/az;

    invoke-virtual {v3, v5}, Lcom/crashlytics/android/core/az;->a(Ljava/util/Set;)V

    .line 10658
    new-instance v3, Lcom/crashlytics/android/core/am;

    invoke-direct {v3, v2}, Lcom/crashlytics/android/core/am;-><init>(B)V

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/crashlytics/android/core/ab;->a([Ljava/io/File;Ljava/util/Set;)V

    .line 494
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->e()[Ljava/io/File;

    move-result-object v9

    .line 496
    array-length v3, v9

    if-gt v3, v0, :cond_2

    .line 497
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No open sessions to be closed."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_2
    return-void

    .line 501
    :cond_2
    aget-object v3, v9, v0

    invoke-static {v3}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 11008
    :try_start_0
    new-instance v5, Lcom/crashlytics/android/core/d;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SessionUser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11009
    :try_start_1
    invoke-static {v5}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 11284
    :try_start_2
    iget-object v7, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    .line 11260
    if-eqz v7, :cond_6

    new-instance v6, Lcom/crashlytics/android/core/cg;

    iget-object v7, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 12109
    iget-object v8, v7, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 12139
    iget-boolean v8, v8, Lio/fabric/sdk/android/services/b/x;->b:Z

    .line 11749
    if-eqz v8, :cond_4

    iget-object v7, v7, Lcom/crashlytics/android/core/h;->f:Ljava/lang/String;

    move-object v8, v7

    .line 11260
    :goto_3
    iget-object v7, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 13109
    iget-object v10, v7, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 13139
    iget-boolean v10, v10, Lio/fabric/sdk/android/services/b/x;->b:Z

    .line 12757
    if-eqz v10, :cond_5

    iget-object v7, v7, Lcom/crashlytics/android/core/h;->h:Ljava/lang/String;

    .line 11260
    :goto_4
    iget-object v10, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 14109
    iget-object v11, v10, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 14139
    iget-boolean v11, v11, Lio/fabric/sdk/android/services/b/x;->b:Z

    .line 13753
    if-eqz v11, :cond_3

    iget-object v4, v10, Lcom/crashlytics/android/core/h;->g:Ljava/lang/String;

    .line 11260
    :cond_3
    invoke-direct {v6, v8, v7, v4}, Lcom/crashlytics/android/core/cg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 15038
    :goto_5
    iget-object v6, v4, Lcom/crashlytics/android/core/cg;->b:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v6, v4, Lcom/crashlytics/android/core/cg;->c:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v6, v4, Lcom/crashlytics/android/core/cg;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v6, :cond_7

    .line 11014
    :goto_6
    if-eqz v1, :cond_8

    .line 11021
    const-string v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 11022
    const-string v1, "Failed to close session user file."

    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 508
    :goto_7
    invoke-static {}, Lcom/crashlytics/android/core/h;->h()Lio/fabric/sdk/android/services/e/p;

    move-result-object v1

    .line 510
    if-nez v1, :cond_9

    .line 511
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v8, v4

    .line 11749
    goto :goto_3

    :cond_5
    move-object v7, v4

    .line 12757
    goto :goto_4

    .line 11260
    :cond_6
    :try_start_3
    new-instance v4, Lcom/crashlytics/android/core/bc;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/crashlytics/android/core/bc;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v6}, Lcom/crashlytics/android/core/bc;->a(Ljava/lang/String;)Lcom/crashlytics/android/core/cg;

    move-result-object v4

    goto :goto_5

    :cond_7
    move v1, v2

    .line 15038
    goto :goto_6

    .line 11018
    :cond_8
    iget-object v1, v4, Lcom/crashlytics/android/core/cg;->b:Ljava/lang/String;

    iget-object v2, v4, Lcom/crashlytics/android/core/cg;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/crashlytics/android/core/cg;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4}, Lcom/crashlytics/android/core/cb;->a(Lcom/crashlytics/android/core/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 11021
    const-string v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 11022
    const-string v1, "Failed to close session user file."

    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_7

    .line 11021
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_8
    const-string v2, "Failed to flush session user file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 11022
    const-string v1, "Failed to close session user file."

    invoke-static {v4, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_9
    iget v1, v1, Lio/fabric/sdk/android/services/e/p;->c:I

    invoke-direct {p0, v9, v0, v1}, Lcom/crashlytics/android/core/ab;->a([Ljava/io/File;II)V

    goto/16 :goto_2

    .line 11021
    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v3

    move-object v4, v5

    goto :goto_8
.end method

.method private a([Ljava/io/File;II)V
    .locals 15

    .prologue
    .line 525
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Closing open sessions."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, p2

    if-ge v0, v2, :cond_8

    .line 528
    aget-object v8, p1, p2

    .line 529
    invoke-static {v8}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 532
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Closing session: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15096
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Collecting session parts for ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15098
    new-instance v2, Lcom/crashlytics/android/core/an;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionCrash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 15100
    if-eqz v5, :cond_3

    array-length v2, v5

    if-lez v2, :cond_3

    const/4 v2, 0x1

    .line 15101
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Session %s has fatal exception: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15104
    new-instance v3, Lcom/crashlytics/android/core/an;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "SessionEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 15106
    if-eqz v4, :cond_4

    array-length v3, v4

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 15107
    :goto_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Session %s has non-fatal exceptions: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15110
    if-nez v2, :cond_0

    if-eqz v3, :cond_7

    .line 15688
    :cond_0
    array-length v3, v4

    move/from16 v0, p3

    if-le v3, v0, :cond_9

    .line 15689
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Trimming down to %d logged exceptions."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16625
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/crashlytics/android/core/an;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SessionEvent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/crashlytics/android/core/an;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/crashlytics/android/core/ab;->c:Ljava/util/Comparator;

    move/from16 v0, p3

    invoke-static {v3, v4, v0, v6}, Lcom/crashlytics/android/core/ch;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 15693
    new-instance v3, Lcom/crashlytics/android/core/an;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "SessionEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    move-object v7, v3

    .line 15113
    :goto_3
    if-eqz v2, :cond_5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    move-object v6, v2

    .line 17130
    :goto_4
    if-eqz v6, :cond_6

    const/4 v2, 0x1

    .line 17133
    :goto_5
    const/4 v5, 0x0

    .line 17134
    const/4 v3, 0x0

    .line 17136
    :try_start_0
    new-instance v4, Lcom/crashlytics/android/core/d;

    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v10

    invoke-direct {v4, v10, v9}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17137
    :try_start_1
    invoke-static {v4}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;

    move-result-object v3

    .line 17139
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v5

    const-string v10, "CrashlyticsCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Collecting SessionStart data for session ID "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17141
    invoke-static {v3, v8}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;Ljava/io/File;)V

    .line 17143
    const/4 v5, 0x4

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v3, v5, v10, v11}, Lcom/crashlytics/android/core/f;->a(IJ)V

    .line 17144
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Lcom/crashlytics/android/core/f;->a(IZ)V

    .line 17146
    const/16 v5, 0xb

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v8}, Lcom/crashlytics/android/core/f;->a(II)V

    .line 17148
    const/16 v5, 0xc

    const/4 v8, 0x3

    invoke-virtual {v3, v5, v8}, Lcom/crashlytics/android/core/f;->b(II)V

    .line 17150
    invoke-direct {p0, v3, v9}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;Ljava/lang/String;)V

    .line 17152
    invoke-static {v3, v7, v9}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;[Ljava/io/File;Ljava/lang/String;)V

    .line 17154
    if-eqz v2, :cond_1

    .line 17155
    invoke-static {v3, v6}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/f;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17165
    :cond_1
    const-string v2, "Error flushing session file stream"

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 17174
    const-string v2, "Failed to close CLS file"

    invoke-static {v4, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 15120
    :cond_2
    :goto_6
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing session part files for ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15122
    invoke-direct {p0, v9}, Lcom/crashlytics/android/core/ab;->a(Ljava/lang/String;)V

    .line 527
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 15100
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 15106
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 15113
    :cond_5
    const/4 v2, 0x0

    move-object v6, v2

    goto/16 :goto_4

    .line 17130
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 17157
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 17158
    :goto_7
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to write session file for session ID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v2}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17165
    const-string v2, "Error flushing session file stream"

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 17550
    if-eqz v4, :cond_2

    .line 17555
    :try_start_3
    invoke-virtual {v4}, Lcom/crashlytics/android/core/d;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 17556
    :catch_1
    move-exception v2

    .line 17557
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error closing session file stream in the presence of an exception"

    invoke-interface {v3, v4, v5, v2}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 17165
    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_8
    const-string v5, "Error flushing session file stream"

    invoke-static {v3, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 17174
    const-string v3, "Failed to close CLS file"

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 15116
    :cond_7
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No events present for session ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 537
    :cond_8
    return-void

    .line 17165
    :catchall_1
    move-exception v2

    goto :goto_8

    .line 17157
    :catch_2
    move-exception v2

    goto :goto_7

    :cond_9
    move-object v7, v4

    goto/16 :goto_3
.end method

.method private static a([Ljava/io/File;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 663
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 664
    sget-object v4, Lcom/crashlytics/android/core/ab;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 666
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 667
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting unknown file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 679
    :cond_0
    return-void

    .line 672
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 674
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Trimming session file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 662
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/ab;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 612
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array p0, v0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/crashlytics/android/core/ab;)Lcom/crashlytics/android/core/az;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->q:Lcom/crashlytics/android/core/az;

    return-object v0
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/crashlytics/android/core/ab;->h:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/crashlytics/android/core/ab;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/crashlytics/android/core/ab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->d()V

    return-void
.end method

.method static synthetic d(Lcom/crashlytics/android/core/ab;)Lcom/crashlytics/android/core/h;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    return-object v0
.end method

.method private d()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 470
    new-instance v3, Lcom/crashlytics/android/core/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/c;-><init>(Lio/fabric/sdk/android/services/b/x;)V

    invoke-virtual {v3}, Lcom/crashlytics/android/core/c;->toString()Ljava/lang/String;

    move-result-object v18

    .line 472
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Opening an new session with ID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3916
    const/4 v5, 0x0

    .line 3917
    const/4 v3, 0x0

    .line 3919
    :try_start_0
    new-instance v4, Lcom/crashlytics/android/core/d;

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BeginSession"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3920
    :try_start_1
    invoke-static {v4}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;

    move-result-object v3

    .line 3922
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Crashlytics Android SDK/%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 4404
    const-string v9, "2.3.11.142"

    .line 3922
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3924
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 3926
    move-object/from16 v0, v18

    invoke-static {v3, v0, v5, v6, v7}, Lcom/crashlytics/android/core/cb;->a(Lcom/crashlytics/android/core/f;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 3928
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 3929
    const-string v2, "Failed to close begin session file."

    invoke-static {v4, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 4934
    const/4 v4, 0x0

    .line 4935
    const/4 v3, 0x0

    .line 4937
    :try_start_2
    new-instance v10, Lcom/crashlytics/android/core/d;

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v2, v5}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4938
    :try_start_3
    invoke-static {v10}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-result-object v2

    .line 4940
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    .line 5177
    iget-object v3, v3, Lio/fabric/sdk/android/services/b/x;->c:Ljava/lang/String;

    .line 4941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 5715
    iget-object v4, v4, Lcom/crashlytics/android/core/h;->j:Ljava/lang/String;

    .line 4942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 5733
    iget-object v5, v5, Lcom/crashlytics/android/core/h;->l:Ljava/lang/String;

    .line 4943
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 6729
    iget-object v6, v6, Lcom/crashlytics/android/core/h;->m:Ljava/lang/String;

    .line 4944
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v7}, Lio/fabric/sdk/android/services/b/x;->a()Ljava/lang/String;

    move-result-object v7

    .line 4945
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 7725
    iget-object v8, v8, Lcom/crashlytics/android/core/h;->k:Ljava/lang/String;

    .line 4945
    invoke-static {v8}, Lio/fabric/sdk/android/services/b/r;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/r;

    move-result-object v8

    .line 8038
    iget v8, v8, Lio/fabric/sdk/android/services/b/r;->e:I

    .line 4948
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/crashlytics/android/core/ab;->s:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/crashlytics/android/core/cb;->a(Lcom/crashlytics/android/core/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 4951
    const-string v3, "Failed to flush to session app file."

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4952
    const-string v2, "Failed to close session app file."

    invoke-static {v10, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 8957
    const/4 v5, 0x0

    .line 8958
    const/4 v3, 0x0

    .line 8961
    :try_start_5
    new-instance v4, Lcom/crashlytics/android/core/d;

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SessionOS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8962
    :try_start_6
    invoke-static {v4}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;

    move-result-object v3

    .line 8964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 9116
    iget-object v2, v2, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 8964
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->f(Landroid/content/Context;)Z

    move-result v2

    .line 8966
    invoke-static {v3, v2}, Lcom/crashlytics/android/core/cb;->a(Lcom/crashlytics/android/core/f;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 8968
    const-string v2, "Failed to flush to session OS file."

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8969
    const-string v2, "Failed to close session OS file."

    invoke-static {v4, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 9975
    const/4 v4, 0x0

    .line 9976
    const/4 v3, 0x0

    .line 9978
    :try_start_7
    new-instance v17, Lcom/crashlytics/android/core/d;

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/crashlytics/android/core/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 9979
    :try_start_8
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/core/f;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/f;

    move-result-object v3

    .line 9981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    .line 10116
    iget-object v2, v2, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 9982
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 9984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/b/x;->c()Ljava/lang/String;

    move-result-object v4

    .line 9985
    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->a()I

    move-result v5

    .line 9986
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 9987
    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->b()J

    move-result-wide v8

    .line 9988
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    .line 9989
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)Z

    move-result v12

    .line 9991
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/crashlytics/android/core/ab;->n:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/b/x;->d()Ljava/util/Map;

    move-result-object v13

    .line 9993
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->g(Landroid/content/Context;)I

    move-result v14

    .line 9995
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v3 .. v16}, Lcom/crashlytics/android/core/cb;->a(Lcom/crashlytics/android/core/f;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 9999
    const-string v2, "Failed to flush session device info."

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 10000
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->q:Lcom/crashlytics/android/core/az;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/crashlytics/android/core/az;->a(Ljava/lang/String;)V

    .line 480
    return-void

    .line 3928
    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_0
    const-string v5, "Failed to flush to session begin file."

    invoke-static {v3, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 3929
    const-string v3, "Failed to close begin session file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 4951
    :catchall_1
    move-exception v2

    :goto_1
    const-string v5, "Failed to flush to session app file."

    invoke-static {v3, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4952
    const-string v3, "Failed to close session app file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 8968
    :catchall_2
    move-exception v2

    move-object v4, v5

    :goto_2
    const-string v5, "Failed to flush to session OS file."

    invoke-static {v3, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8969
    const-string v3, "Failed to close session OS file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 9999
    :catchall_3
    move-exception v2

    :goto_3
    const-string v5, "Failed to flush session device info."

    invoke-static {v3, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 10000
    const-string v3, "Failed to close session device file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 9999
    :catchall_4
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_3

    .line 8968
    :catchall_5
    move-exception v2

    goto :goto_2

    .line 4951
    :catchall_6
    move-exception v2

    move-object v4, v10

    goto :goto_1

    :catchall_7
    move-exception v3

    move-object v4, v10

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, v19

    goto :goto_1

    .line 3928
    :catchall_8
    move-exception v2

    goto :goto_0
.end method

.method static synthetic e(Lcom/crashlytics/android/core/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ab;->a(Z)V

    return-void
.end method

.method private e()[Ljava/io/File;
    .locals 2

    .prologue
    .line 587
    .line 17583
    new-instance v0, Lcom/crashlytics/android/core/an;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 588
    sget-object v1, Lcom/crashlytics/android/core/ab;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 589
    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 1273
    .line 21579
    sget-object v0, Lcom/crashlytics/android/core/ab;->a:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1273
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1274
    iget-object v4, p0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    new-instance v5, Lcom/crashlytics/android/core/ao;

    iget-object v6, p0, Lcom/crashlytics/android/core/ab;->p:Lcom/crashlytics/android/core/h;

    invoke-direct {v5, v6, v3}, Lcom/crashlytics/android/core/ao;-><init>(Lcom/crashlytics/android/core/h;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/core/v;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    :cond_0
    return-void
.end method

.method private g()Ljava/io/File;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->m:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 760
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/core/d;->a:Ljava/io/FilenameFilter;

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 767
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 769
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 771
    const/4 v0, 0x0

    .line 772
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 773
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    .line 17608
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 777
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ab;->a([Ljava/io/File;Ljava/util/Set;)V

    goto :goto_0
.end method

.method final a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/crashlytics/android/core/ab;->g()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->r:Lcom/crashlytics/android/core/at;

    .line 3073
    iget-object v1, v0, Lcom/crashlytics/android/core/at;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3077
    iget-object v1, v0, Lcom/crashlytics/android/core/at;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/crashlytics/android/core/at;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3078
    iget-object v1, v0, Lcom/crashlytics/android/core/at;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/crashlytics/android/core/at;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    new-instance v2, Lcom/crashlytics/android/core/ak;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/core/ak;-><init>(Lcom/crashlytics/android/core/ab;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/v;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 259
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 259
    iget-object v0, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/crashlytics/android/core/ab;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 259
    iget-object v1, p0, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
