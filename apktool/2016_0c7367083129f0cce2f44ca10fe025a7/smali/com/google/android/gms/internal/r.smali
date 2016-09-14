.class public abstract Lcom/google/android/gms/internal/r;
.super Lcom/google/android/gms/internal/ae;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected a:Z

.field private b:Lcom/google/android/gms/common/ConnectionResult;

.field private c:I


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/r;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 1000
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/r;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->a:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/r;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->a()V

    .line 0
    return-void
.end method
