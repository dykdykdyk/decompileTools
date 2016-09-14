.class Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# static fields
.field private static final sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    .line 159
    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->start()V

    .line 160
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 166
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 167
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 3

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 196
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>(Landroid/support/v4/view/AsyncLayoutInflater$1;)V

    .line 199
    :cond_0
    return-object v0
.end method

.method public releaseRequest(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 204
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 205
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 206
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 207
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 208
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    iget-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    # getter for: Landroid/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Landroid/support/v4/view/AsyncLayoutInflater;->access$000(Landroid/support/v4/view/AsyncLayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v3, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :goto_1
    iget-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    # getter for: Landroid/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/support/v4/view/AsyncLayoutInflater;->access$200(Landroid/support/v4/view/AsyncLayoutInflater;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "AsyncLayoutInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    :catch_1
    move-exception v1

    .line 186
    const-string v2, "AsyncLayoutInflater"

    const-string v3, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
