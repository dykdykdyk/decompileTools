.class final Lio/fabric/sdk/android/services/b/v;
.super Lio/fabric/sdk/android/services/b/k;
.source "ExecutorUtils.java"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lio/fabric/sdk/android/services/b/u;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/u;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/v;->b:Lio/fabric/sdk/android/services/b/u;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/v;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/v;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method
