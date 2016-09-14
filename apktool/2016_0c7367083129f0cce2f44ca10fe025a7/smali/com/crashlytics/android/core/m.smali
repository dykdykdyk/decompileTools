.class final Lcom/crashlytics/android/core/m;
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
    .line 895
    iput-object p1, p0, Lcom/crashlytics/android/core/m;->a:Lcom/crashlytics/android/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/fabric/sdk/android/services/e/v;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 895
    .line 1898
    iget-object v1, p1, Lio/fabric/sdk/android/services/e/v;->d:Lio/fabric/sdk/android/services/e/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/e/m;->a:Z

    if-eqz v1, :cond_1

    .line 1899
    iget-object v1, p0, Lcom/crashlytics/android/core/m;->a:Lcom/crashlytics/android/core/h;

    .line 1908
    new-instance v2, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v2, v1}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/o;)V

    .line 1909
    invoke-interface {v2}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1899
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1901
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
