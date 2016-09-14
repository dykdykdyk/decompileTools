.class public final Lcom/google/android/gms/dynamic/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/g;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/dynamic/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/d;->b:Lcom/google/android/gms/dynamic/b;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/d;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/d;->b:Lcom/google/android/gms/dynamic/b;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/dynamic/d;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
