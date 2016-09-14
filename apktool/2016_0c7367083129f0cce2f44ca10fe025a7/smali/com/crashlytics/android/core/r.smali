.class final Lcom/crashlytics/android/core/r;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/o;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/o;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/crashlytics/android/core/r;->a:Lcom/crashlytics/android/core/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1042
    iget-object v0, p0, Lcom/crashlytics/android/core/r;->a:Lcom/crashlytics/android/core/o;

    iget-object v0, v0, Lcom/crashlytics/android/core/o;->e:Lcom/crashlytics/android/core/h;

    .line 1914
    new-instance v1, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/o;)V

    .line 1915
    invoke-interface {v1}, Lio/fabric/sdk/android/services/d/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/d/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 1043
    iget-object v0, p0, Lcom/crashlytics/android/core/r;->a:Lcom/crashlytics/android/core/o;

    iget-object v0, v0, Lcom/crashlytics/android/core/o;->b:Lcom/crashlytics/android/core/u;

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/core/u;->a(Z)V

    .line 1044
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1045
    return-void
.end method
