.class public final Lio/fabric/sdk/android/services/c/h;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Lio/fabric/sdk/android/services/c/g;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/c/g;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iput-object p2, p0, Lio/fabric/sdk/android/services/c/h;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/c/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->c:Lio/fabric/sdk/android/services/c/m;

    iget-object v1, p0, Lio/fabric/sdk/android/services/c/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/m;->a(Ljava/lang/Object;)V

    .line 52
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/c/h;->b:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->c:Lio/fabric/sdk/android/services/c/m;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/m;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->a:Landroid/content/Context;

    const-string v1, "Failed to record event."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
