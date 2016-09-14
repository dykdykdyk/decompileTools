.class final Lcom/crashlytics/android/core/p;
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
    .line 994
    iput-object p1, p0, Lcom/crashlytics/android/core/p;->a:Lcom/crashlytics/android/core/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->a:Lcom/crashlytics/android/core/o;

    iget-object v0, v0, Lcom/crashlytics/android/core/o;->b:Lcom/crashlytics/android/core/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/u;->a(Z)V

    .line 998
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 999
    return-void
.end method
