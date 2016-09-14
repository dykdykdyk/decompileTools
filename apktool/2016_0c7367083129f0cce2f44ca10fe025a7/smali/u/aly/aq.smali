.class public final Lu/aly/aq;
.super Ljava/lang/Object;
.source "Defcon.java"

# interfaces
.implements Lu/aly/t;


# static fields
.field private static c:Lu/aly/aq;


# instance fields
.field public a:I

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lu/aly/aq;->c:Lu/aly/aq;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/aq;->a:I

    .line 35
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lu/aly/aq;->b:J

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/aq;
    .locals 3

    .prologue
    .line 40
    const-class v1, Lu/aly/aq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/aq;->c:Lu/aly/aq;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0}, Lu/aly/aq;-><init>()V

    sput-object v0, Lu/aly/aq;->c:Lu/aly/aq;

    .line 42
    invoke-static {p0}, Lu/aly/fj;->a(Landroid/content/Context;)Lu/aly/fj;

    move-result-object v0

    .line 1212
    iget-object v0, v0, Lu/aly/fj;->b:Lu/aly/fk;

    .line 42
    invoke-virtual {v0}, Lu/aly/fk;->a()I

    move-result v0

    .line 43
    sget-object v2, Lu/aly/aq;->c:Lu/aly/aq;

    invoke-direct {v2, v0}, Lu/aly/aq;->a(I)V

    .line 45
    :cond_0
    sget-object v0, Lu/aly/aq;->c:Lu/aly/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 104
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 105
    iput p1, p0, Lu/aly/aq;->a:I

    .line 107
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Lu/aly/an;
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 75
    new-instance v0, Lu/aly/an;

    invoke-direct {v0}, Lu/aly/an;-><init>()V

    .line 76
    invoke-static {p0}, Lu/aly/w;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lu/aly/an;->b:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    iput-wide v2, v0, Lu/aly/an;->c:J

    .line 79
    add-long/2addr v2, v4

    iput-wide v2, v0, Lu/aly/an;->d:J

    .line 80
    iput-wide v4, v0, Lu/aly/an;->e:J

    .line 82
    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/fk;)V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p1}, Lu/aly/fk;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lu/aly/aq;->a(I)V

    .line 116
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lu/aly/aq;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
