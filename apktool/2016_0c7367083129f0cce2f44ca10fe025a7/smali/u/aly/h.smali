.class public final Lu/aly/h;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/n;


# static fields
.field private static c:Lu/aly/h;


# instance fields
.field a:Lu/aly/n;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/h;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lu/aly/e;

    iget-object v1, p0, Lu/aly/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/h;->a:Lu/aly/n;

    .line 24
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/h;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lu/aly/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/h;->c:Lu/aly/h;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 28
    new-instance v0, Lu/aly/h;

    invoke-direct {v0, p0}, Lu/aly/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/h;->c:Lu/aly/h;

    .line 31
    :cond_0
    sget-object v0, Lu/aly/h;->c:Lu/aly/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lu/aly/j;

    invoke-direct {v0, p0}, Lu/aly/j;-><init>(Lu/aly/h;)V

    invoke-static {v0}, Lcom/umeng/analytics/y;->b(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public final a(Lu/aly/o;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lu/aly/i;

    invoke-direct {v0, p0, p1}, Lu/aly/i;-><init>(Lu/aly/h;Lu/aly/o;)V

    invoke-static {v0}, Lcom/umeng/analytics/y;->b(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lu/aly/k;

    invoke-direct {v0, p0}, Lu/aly/k;-><init>(Lu/aly/h;)V

    invoke-static {v0}, Lcom/umeng/analytics/y;->c(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public final b(Lu/aly/o;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lu/aly/h;->a:Lu/aly/n;

    invoke-interface {v0, p1}, Lu/aly/n;->b(Lu/aly/o;)V

    .line 48
    return-void
.end method
