.class final Lcom/crashlytics/android/core/n;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lio/fabric/sdk/android/services/e/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/e/s",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/h;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/crashlytics/android/core/n;->a:Lcom/crashlytics/android/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/fabric/sdk/android/services/e/v;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 919
    .line 1922
    const/4 v1, 0x1

    .line 1924
    iget-object v0, p0, Lcom/crashlytics/android/core/n;->a:Lcom/crashlytics/android/core/h;

    .line 2123
    iget-object v0, v0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 2357
    iget-object v2, v0, Lio/fabric/sdk/android/f;->e:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 2358
    iget-object v0, v0, Lio/fabric/sdk/android/f;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1926
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/crashlytics/android/core/n;->a:Lcom/crashlytics/android/core/h;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/h;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1928
    iget-object v1, p0, Lcom/crashlytics/android/core/n;->a:Lcom/crashlytics/android/core/h;

    iget-object v2, p1, Lio/fabric/sdk/android/services/e/v;->c:Lio/fabric/sdk/android/services/e/o;

    invoke-static {v1, v0, v2}, Lcom/crashlytics/android/core/h;->a(Lcom/crashlytics/android/core/h;Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z

    move-result v0

    .line 1931
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 919
    return-object v0

    .line 2360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
