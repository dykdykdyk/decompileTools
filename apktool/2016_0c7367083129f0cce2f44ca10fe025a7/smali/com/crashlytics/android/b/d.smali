.class final Lcom/crashlytics/android/b/d;
.super Ljava/lang/Object;
.source "ActivityLifecycleCheckForUpdatesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/b/c;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/b/c;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/b/d;->a:Lcom/crashlytics/android/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/b/d;->a:Lcom/crashlytics/android/b/c;

    iget-object v0, v0, Lcom/crashlytics/android/b/c;->a:Lcom/crashlytics/android/b/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/b/b;->a()V

    .line 28
    return-void
.end method
