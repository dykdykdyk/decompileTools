.class final Lcom/crashlytics/android/core/av;
.super Landroid/content/BroadcastReceiver;
.source "DevicePowerStateListener.java"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/at;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/at;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/crashlytics/android/core/av;->a:Lcom/crashlytics/android/core/at;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/core/av;->a:Lcom/crashlytics/android/core/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/at;->a(Lcom/crashlytics/android/core/at;Z)Z

    .line 51
    return-void
.end method
