.class abstract Lcom/google/android/gms/measurement/internal/ar;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/ca;

.field volatile b:J

.field private final d:Ljava/lang/Runnable;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ca;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ar;->a:Lcom/google/android/gms/measurement/internal/ca;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ar;->e:Z

    new-instance v0, Lcom/google/android/gms/measurement/internal/as;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/as;-><init>(Lcom/google/android/gms/measurement/internal/ar;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ar;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ar;)Lcom/google/android/gms/measurement/internal/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ar;->a:Lcom/google/android/gms/measurement/internal/ca;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/ar;)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ar;->b:J

    return-wide v0
.end method

.method private c()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ar;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/ar;->c:Landroid/os/Handler;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/measurement/internal/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/ar;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ar;->a:Lcom/google/android/gms/measurement/internal/ca;

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ca;->a:Landroid/content/Context;

    .line 0
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/ar;->c:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/ar;->c:Landroid/os/Handler;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/measurement/internal/ar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ar;->e:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ar;->b()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ar;->a:Lcom/google/android/gms/measurement/internal/ca;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ca;->g:Lcom/google/android/gms/common/util/c;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/common/util/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ar;->b:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/ar;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ar;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ar;->a:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ar;->b:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/ar;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ar;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
