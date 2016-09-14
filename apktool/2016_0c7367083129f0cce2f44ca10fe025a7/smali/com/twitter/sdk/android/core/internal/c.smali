.class final Lcom/twitter/sdk/android/core/internal/c;
.super Ljava/lang/Object;
.source "SessionMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/a;->b()V

    .line 83
    return-void
.end method
